#include <stdio.h>
#include <utilities.h> // atob64, b64toa, etc. 
#include <vector.h>
#include <file.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb/stb_image_write.h"

void pack(uint8* pixels, uint8* m, int w, int h, int n, int b)
{
    int bits = 7;
    int len = w * h * n;

    // first 3 color componets hold b value
    int i;
    for(i=0; i < 3; i++) {
        uint8* comp = pixels + i;
        *comp = bit_clear(*comp, 1, 1);
        *comp |= bit_range(b, i+1,1);
    }

    for(; i < len; i+=n) {

        for(int j=0; j < n; j++) {

            uint8* comp = pixels + i + j;
            *comp = bit_clear(*comp, b, b); // clear out first b bits

            for(int k=b-1; k >= 0; k--) {

                uint8 bit = *m & (1 << bits);

                *comp |= ((bit ? 1 : 0) << k);

                if (--bits == -1) {
                    bits = 7;
                    ++m;
                    if (*(m-1) == '\0')
                        return;
                }
            }
        }
    }
}

vector unpack(uint8* pixels, int w, int h, int n)
{
    vector b64; vector_init(&b64, sizeof(char), 1);
    uint8 c = 0;
    int bits = 7;
    int b = 0;

    int len = w * h * n;

    int i;
    for(i=0; i < 3; i++) {
        uint8* comp = pixels + i;
        b |= bit_range(*comp, 1, 1) << i;
    }
    if (!b)
        b = 8;

    for(; i < len; i+=n) {

        for(int j=0; j < n; j++) {

            uint8* comp = pixels + i + j;

            for(int k=b; k > 0; k--) {

                uint8 bit = bit_range(*comp, k, 1);
                c |= (bit << bits);

                if (--bits == -1) {
                    bits = 7;
                    if (c == '\0') goto done;
                    vector_push(&b64, &c);
                    c = 0;
                }
            }
        }
    }

    done: {
        char null = '\0';
        vector_push(&b64, &null);
        return b64;
    }
}

void usage(char* pname)
{
    fprintf(stderr, "%s: missing/bad params!\n\t-p: 'image to pack into'\n\t-u: 'image to unpack'\n\t-f: 'file to read'\n\t-o: 'output file'\n\t-b: 'precision bits'\n", pname);
    exit(1);
}

int main(int argc, char** argv)
{
    char* pname = *argv;
    if (argc < 3)
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

    if (argc != 0)
        usage(pname);

    if (bchar)
        b = atoi(bchar);

    int w,h,n;
    uint8* pixels = stbi_load(png_file, &w, &h, &n, 0);

    if (!pixels) {
        printf("%s: could't open %s\n",pname, png_file);
        return 1;
    }

    if (PACK) {

        if (!output_file)
            output_file = "pack.png";

        printf("width: %d, height: %d, comp: %d\n", w, h, n );

        uint8* data;
        int len;

        // data is in file
        if (read_file) {
            data = fget(read_file, &len);
            if (!data) {
                printf("%s: could't open %s\n",pname, read_file);
                return 1;
            }
        }

        // data from stdin
        else {
            int c;
            vector lines; vector_init(&lines, sizeof(char), 1);
            while ((c = getchar()) != EOF)
                vector_push(&lines, &c);
            int null = '\0';
            vector_push(&lines, &null);
            data = lines.begin;
            len = lines.length;
        }

        char* b64 = malloc(len * 8 / 6 + 1);
        len = atob64(b64, data, len); // base64 convertion
        free(data);

        float len_kb = (float)len / 1024;
        float capacity = (float)(w * h * n * b) / (1024*8);
        float wrote = (len_kb < capacity ?  len_kb : capacity);

        if (wrote == capacity) {
            printf("warning: '%s' is too large.\n", read_file);
            b64[(w * h * n * b / 8 )] = '\0';
        }

        pack(pixels, b64, w, h, n, b);
        stbi_write_png(output_file, w, h, n, pixels, 0);
        printf("packed %.2lf kb after base64 to '%s'\n", len_kb, output_file);

        free(b64);
        free(pixels);
    }

    else if (UNPACK) {

        vector b64_vector = unpack(pixels, w, h, n);
        int str_len = b64toa(b64_vector.begin,  b64_vector.begin, b64_vector.length-1); // -1 because vector pushes '\0'

        if (output_file)
            fset(output_file, b64_vector.begin, str_len);
        else
            puts(b64_vector.begin);

        vector_free(&b64_vector);
    }

    return 0;
}
