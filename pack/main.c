#include <stdio.h>
#include <file.h> // fget(), fset
#include <vector.h> // utilities.h -> bit_clear and bit_range

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb/stb_image_write.h"

void pack(uint8* pixels, uint8* m, int w, int h, int n, int b)
{
    int bits = 7; //8 bits, keeps track of where we are in the byte
    int len = w * h * n; //get how many bytes in image

    // first 3 color components hold RGB value
    //3 color components in the first pixel are used to contain the number of least significant bits
    int i;
    for(i=0; i < 3; i++) {
        uint8* comp = pixels + i;
        *comp = bit_clear(*comp, 1, 1);
        *comp |= bit_range(b, i+1,1);
    }

    for(; i < len; i++) {

        uint8* comp = pixels + i;//iterating through components pixel (image we are hiding stuff in)
        *comp = bit_clear(*comp, b, b); // clear out first least significant b bits

        //loop ORs the component value with the correct bit from m
        for(int k=b-1; k >= 0; k--) {

            uint8 bit = *m & (1 << bits);//accessing byte of data trying to hide
            *comp |= (bit ? 1 : 0) << k;//check if bit is zero or not. is not zero ored with component shifted k times

            if (--bits == -1) { // if byte is finished get next byte, keeps track of bits
                bits = 7;
                ++m;
                if (*(m-1) == '\0')//ends of message or file, so return because packing complete
                    return;
            }
        }
    }
}

vector unpack(uint8* pixels, int w, int h, int n)
{
    vector b64; vector_init(&b64, sizeof(char), 1);
    uint8 c = 0;
    int bits = 7; // keeps track of bits
    int b = 0;// hold how many buts are used in data hiding

    int len = w * h * n; //gets how many bytes in image

    //decodes first 3 color components to retrieve how many least significant bits are used to hide the data
    int i;
    for(i=0; i < 3; i++) {
        uint8* comp = pixels + i;
        b |= bit_range(*comp, 1, 1) << i; //gets the information of how many least significant bits are used from pixel info
    }
    if (!b)
        b = 8;

    for(; i < len; i++) {

        uint8* comp = pixels + i; //iterates through component pixel to find data hidden

        for(int k=b; k > 0; k--) {

            uint8 bit = bit_range(*comp, k, 1); //accessing bytes of data thathave hidden data
            c |= bit << bits;

            if (--bits == -1){  //if  byte finished then move on to next byte
                bits = 7;
                if (c == '\0') //if hidden message hits end then goes to done
                    goto done;
                vector_push(&b64, &c);//packs info from hidden message to b64
                c = 0; // c is cleared
            }
        }
    }

    done: {
        char null = '\0';
        vector_push(&b64, &null); //pushes end line character to end of message
        return b64; //returns hidden data
    }
}

void usage(char* pname)
{
    fprintf(stderr, "%s: missing/bad params!\n\t-p: 'image to pack into'\n\t-u: 'image to unpack'\n\t-f: 'file to read'\n\t-o: 'output file'\n\t-b: 'precision bits'\n", pname);
    exit(1);
}

int main(int argc, char** argv) //argv double pointer to point to strings in memory, argc keeps track og hpw many strings flags there are
{
    char* pname = *argv;
    if (argc < 3) //if rgc less than three not enough flags prints out message
        usage(pname);

    int b = 1;

    char *png_file = NULL, *read_file = NULL, *output_file = NULL, *bchar = NULL;
    int PACK=0, UNPACK=0;

    while (--argc > 0) {
        if ((*++argv)[0] == '-') {
            switch (*++argv[0]) {
                case 'p':
                    PACK = 1;
                    png_file = *++argv;
                    --argc;
                    break;
                case 'u':
                    UNPACK = 1;
                    png_file = *++argv;
                    --argc;
                    break;
                case 'f':
                    read_file = *++argv;
                    --argc;
                    break;
                case 'o':
                    output_file = *++argv;
                    --argc;
                    break;
                case 'b':
                    bchar = *++argv;
                    --argc;
                    break;
                default:
                    argc = -1;
                    break;
            }
        }
        else
            argc = -1;
    }

    if (argc != 0) //check to make sure no garbage and checks we have necessary info to work with
        usage(pname);

    if (bchar)
        b = atoi(bchar); //converts char to integer for number of bits to use for packing

    int w,h,n;
    uint8* pixels = stbi_load(png_file, &w, &h, &n, 0);

    if (!pixels) { //check to make sure image loads properly
        printf("%s: could't open %s\n",pname, png_file);
        return 1;
    }

    if (PACK) {

        if (!output_file) //if there is already no output file then output file creaked with name pack.png
            output_file = "pack.png";

        printf("width: %d, height: %d, comp: %d\n", w, h, n ); //prints image dimensions

        uint8* data;
        int len;

        // data is in file
        if (read_file) {
            data = fget(read_file, &len);
            //checks to make sure data is read in
            if (!data) {
                printf("%s: could't open %s\n",pname, read_file);
                return 1;
            }
        }

        // data from stdin
        else {
            int c;
            vector lines; vector_init(&lines, sizeof(char), 1);//initates vector lines to be empty with capacity of char
            while ((c = getchar()) != EOF)
                vector_push(&lines, &c);
            int null = '\0';
            vector_push(&lines, &null);
            data = lines.begin;
            len = lines.length;
        }
        //allocates memory
        char* b64 = malloc(len * 8 / 6 + 1);//makes space in memory
        len = atob64(b64, data, len);//coverts file contents into base 64 for what we want to hide for b64 (in utilities.h)
        free(data);//frees memory taken up by data

        float len_kb = (float)len / 1024;//convert to kilobytes
        float capacity = (float)(w * h * n * b) / (1024*8);//how many bytes we need from image to pack data
        float wrote = (len_kb < capacity ?  len_kb : capacity);
        //to warn that the data we want to fide is to big compared to the image we want to hide it in and cut the message off with a NULL character
        if (wrote == capacity) {
            printf("warning: '%s' is too large.\n", read_file);
            b64[(w * h * n * b / 8 )] = '\0';
        }

        pack(pixels, b64, w, h, n, b); //packs
        stbi_write_png(output_file, w, h, n, pixels, 0); //writes packed image to output file
        printf("packed %.2lf kb after base64 to '%s'\n", len_kb, output_file);

        free(b64);
        free(pixels);
    }

    else if (UNPACK) {

        vector b64_vector = unpack(pixels, w, h, n);//gets the message that was hidden in the image
        int str_len = b64toa(b64_vector.begin,  b64_vector.begin, b64_vector.length-1); // -1 because vector pushes '\0'

        if (output_file)
            fset(output_file, b64_vector.begin, str_len); //output whats the message is
        else
            puts(b64_vector.begin);

        vector_free(&b64_vector); //frees up space
    }

    return 0;
}
