#include <stdint.h>

typedef uint8_t uint8;
typedef uint16_t uint16;

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>

#include <huffman_in_c_512.h>

int main(int argc, char** argv)
{
    char* filename = argv[1];
    int width, height, n;

    uint8* pixels = stbi_load(filename, &width, &height, &n, 0);
    printf("n: %d\n", n);

    //formula AR
    // C B
    // A X

    int size = width * height * n;
    int* formula1 = calloc(size, sizeof(int));
    int* formula2 = calloc(size, sizeof(int));
    int* formula3 = calloc(size, sizeof(int));
    int* formula4 = calloc(size, sizeof(int));
    int* formula5 = calloc(size, sizeof(int));
    int* formula6 = calloc(size, sizeof(int));
    int* formula7 = calloc(size, sizeof(int));

    int* prediction[] = {formula1, formula2, formula3, formula4, formula5, formula6, formula7};

    int j=0;
    for(int y=0; y < height; y++) {
        
        uint8* X = pixels + (y * width * n);

        for(int x=0; x < width; x++, X += n, j += 3) {
            
            /*
            C B
            A X
            */
            uint8* A = NULL; // left pixel
            uint8* B = NULL; // above pixel
            uint8* C = NULL; // diagnoal pixel
            
            // seven prediction
            for(int i=0; i < 7; i++) {

                // formula do not appy to first row and column 
                if (y == 0 && x > 0) {
                    A = X - n;
                    prediction[i][j]   = X[0] - A[0];    
                    prediction[i][j+1] = X[1] - A[1];    
                    prediction[i][j+2] = X[2] - A[2];    
                }
                else if (x==0 && y > 0) {
                    B = X - (width * n);
                    prediction[i][j]   = X[0] - B[0];    
                    prediction[i][j+1] = X[1] - B[1];    
                    prediction[i][j+2] = X[2] - B[2];    
                }
                
                // apply apppriate formula
                else if (y > 0 && x > 0) {

                    A = X - n;
                    B = X - (width * n);
                    C = A - (width * n);

                    // prediction 1 - 7
                    if (i==0) {
                        prediction[i][j]   = X[0] - A[0];    
                        prediction[i][j+1] = X[1] - A[1];    
                        prediction[i][j+2] = X[2] - A[2];
                    }
                    else if (i==1) {
                        prediction[i][j]   = X[0] - B[0];    
                        prediction[i][j+1] = X[1] - B[1];    
                        prediction[i][j+2] = X[2] - B[2];
                    }
                    else if (i==2) {
                        prediction[i][j]   = X[0] - C[0];    
                        prediction[i][j+1] = X[1] - C[1];    
                        prediction[i][j+2] = X[2] - C[2];
                    }
                    else if (i==3) {
                        prediction[i][j]   = X[0] - (A[0] + B[0] - C[0]);    
                        prediction[i][j+1] = X[1] - (A[1] + B[1] - C[1]);   
                        prediction[i][j+2] = X[2] - (A[2] + B[2] - C[2]);
                    }
                    else if (i==4) {
                        prediction[i][j]   = X[0] - (A[0] + (B[0] - C[0]) / 2);    
                        prediction[i][j+1] = X[1] - (A[1] + (B[1] - C[1]) / 2);    
                        prediction[i][j+2] = X[2] - (A[2] + (B[2] - C[2]) / 2);
                    }
                    else if (i==5) {
                        prediction[i][j]   = X[0] - (B[0] + (A[0] - C[0]) / 2);    
                        prediction[i][j+1] = X[1] - (B[1] + (A[1] - C[1]) / 2);     
                        prediction[i][j+2] = X[2] - (B[2] + (A[2] - C[2]) / 2);  
                    }
                    else if (i==6) {
                        prediction[i][j]   = X[0] - ((A[0] + B[0]) / 2);    
                        prediction[i][j+1] = X[1] - ((A[1] + B[1]) / 2);     
                        prediction[i][j+2] = X[2] - ((A[2] + B[2]) / 2); 
                    }
                }
            }
        }
    }

    // count bits for each formula and print result
    int bc[7] = {0};
    for(int i=0; i < 7; i++) {

        char_freq cf[512] = {0};
        int cf_len;
        char_freq* cf_main = char_frequency(prediction[i], size, cf, &cf_len);
        huffman h = build_huffman_tree(cf_main, cf_len);

        //total bits in compressed data for for a pixel value 
        for(int j=0; j < cf_len; j++) 
            bc[i] += cf_main[j].freq * h.codes[j].bit_count;
    }

    for(int i=0; i < 7; i++) {
        printf("f%d ratio: %f\n",i, (float)size * 8 / bc[i]);
    }


    int* pixels_int = calloc(size, sizeof(int));

    for (int i=0; i < size; i++)
        pixels_int[i] = pixels[i]; 

    char_freq cf[512] = {0};
    int cf_len;
    char_freq* cf_main = char_frequency(pixels_int, size, cf, &cf_len);
    huffman h = build_huffman_tree(cf_main, cf_len);
    int bit_count = 0;

    for(int j=0; j < cf_len; j++) 
        bit_count += cf_main[j].freq * h.codes[j].bit_count;

    printf("normal huffman ratio: %f\n", (float)size * 8 / bit_count);

}
