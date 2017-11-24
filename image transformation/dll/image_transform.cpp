#include "image_transform.h"

void image_transtition(uint8* pixels, Image a, Image b, float t)
{
    int len = a.width * a.height * RGBA;
    for(int i=0; i < len; i++) {

        // uint8 a_r = a.pixels[i];
        // uint8 a_g = a.pixels[i+1];
        // uint8 a_b = a.pixels[i+2];
        // uint8 a_a = a.pixels[i+3];
        //
        // uint8 b_r = b.pixels[i];
        // uint8 b_g = b.pixels[i+1];
        // uint8 b_b = b.pixels[i+2];
        // uint8 b_a = b.pixels[i+3];

        // pixels[i]   =  255 - roundf((a.pixels[i] - b.pixels[i]) * t  +  b.pixels[i]);
        // pixels[i+1] =  255 - roundf((a.pixels[i+1] - b.pixels[i+1]) * t  +  b.pixels[i+1]);
        // pixels[i+2] =  255 - roundf((a.pixels[i+2] - b.pixels[i+2]) * t  +  b.pixels[i+2]);
        // pixels[i+3] =  255;

        pixels[i] = roundf((a.pixels[i] - b.pixels[i]) * t  +  b.pixels[i]);
    }
}
