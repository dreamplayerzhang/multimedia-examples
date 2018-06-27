#include <assert.h>
#include <utilities.h>
#include <vector.h>
#include <file.h>
#include <huffman.h>
#include <time.h>


int main(int argc, char** argv) 
{
    char *fname = NULL, *oname = NULL;
    int D = 0;

    while (--argc > 0) {
        if ((*++argv)[0] == '-')
            switch (*++argv[0]) {
                case 'd':
                    D = 1;
                    fname = *++argv;
                    --argc;
                    break;
                case 'o':
                    oname = *++argv;
                    --argc;
                    break;
        }
        else {
            fname = *argv;
        }
    }

    if (argc != 0 || fname == NULL) {
        fprintf(stderr, "bad arguments\n");
        return 1;
    }

    // decompress section
    if (D) {
        int str_len;
        uint8* str = (uint8*)fget(fname, &str_len);

        timer(TIMER_START);
        std::vector<uint8> dfile = huffman_decompress(str, str_len);
        double tf = timer(TIMER_FINISH);
        printf("decompress in %.2lf s, %.2lf mb/s\n", tf, (double)str_len/1000000/tf);

        if (oname)
            fname = oname;
        else 
            fname[strlen(fname) - 5] = '\0'; //remove .huff extension

        timer(TIMER_START);
        fset(fname, (uint8*)&dfile[0], dfile.size());
        printf("fset: %.2lf s \n", timer(TIMER_FINISH));
    }

    // compress section
    else {

        int str_len;
        uint8* str = (uint8*)fget(fname, &str_len); // acquire file content and length

        timer(TIMER_START);
        std::vector<uint8> cfile = huffman_compress(str, str_len);
        double tf = timer(TIMER_FINISH);
        printf("compress in %.2lf s, RATIO : %.3f, %.2lf mb/s\n", tf, (double)str_len/cfile.size(), (double)str_len/1000000/tf);

        char f[256];
        sprintf(f, "%s.huff", fname); // add .huff extension to original data
        timer(TIMER_START);
        fset(f, (uint8*)&cfile[0], cfile.size()); // write the compressed data to file 
        printf("fset: %.2lf s \n", timer(TIMER_FINISH));
    }

 

}