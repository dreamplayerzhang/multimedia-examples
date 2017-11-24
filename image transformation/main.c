#include "../utilities.h"
// #include <vector.h>
#define STB_IMAGE_IMPLEMENTATION
#include "../stb/stb_image.h"

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "../stb/stb_image_write.h"

typedef struct {
    int w;
    int h;
    int n;
    uint8* pixels;
} image;

void image_transtition(uint8* pixels, image a, image b, float t)
{
    int len = a.w * a.h * a.n;

    for(int i=0; i < len; i++) {
        pixels[i] = (int)((float)(a.pixels[i] - b.pixels[i]) * t) +  b.pixels[i];
    }
}

int main(int argc, char** argv)
{
    image a;
    image b;

    a.pixels = stbi_load("a.jpg", &a.w, &a.h, &a.n, 0);
    b.pixels = stbi_load("b.jpg", &b.w, &b.h, &b.n, 0);

    uint8* t_pixels = malloc(a.w * a.h * a.n);

    for(float t=0.0f; t < 1.0f; t += .05f) {
        printf("%.2lf\n", t);
        image_transtition(t_pixels, a, b, t);
        char fname[100];
        sprintf(fname, "transtitions/%d.png", (int)(t*100.0f));
        stbi_write_png(fname, a.w, a.h, a.n, t_pixels, 0);
    }

}
