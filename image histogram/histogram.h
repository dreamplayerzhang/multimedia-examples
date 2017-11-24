#pragma once

#include <stdio.h>
#include <vector>
#include <string>
#include <imgui/local.h>
#include <iostream>
#include <stdio.h>

// starting at bit s, get f bits to the right of s shifted all the way to the right,
// while discarding bits outside of the range [s, s-f)
// ex: val = 1001101, bits_range(val,4,2) -> 00000011
#define BIT_RANGE(val, s, f) (((val) &= (1 << (s)) - 1) >> ((s) - (f)))

struct histogram
{
    void set(int bits)
    {
      //allocates memory for max possible number of bits for RGB hence 1 shifted 12 (3 * 4) Times
      //does this once
        if (!values)
            values = (int*)malloc(sizeof(int) * (1 << 12));

        // only set the amount of bits needed to zero, hence 1 << (bits * 3)
        //just clears the necessary amount of memmory
        memset(values, 0, sizeof(int) * (1 << (bits * 3)));

        uint8* pixels = image.pixels;
        int len = image.width * image.height * RGBA;

        // skip alpha
        for(int i=0; i < len; i += 4) {
            int r = BIT_RANGE(pixels[ i ], 8, bits) << (bits * 2);
            int g = BIT_RANGE(pixels[i+1], 8, bits) << bits;
            int b = BIT_RANGE(pixels[i+2], 8, bits);
            values[r | g | b]++;
        }
    }

    int* values = NULL;
    int difference = 0;
    Image image;
};

// difference between the frequnecy of color codes between two images
int hist_dif(int* a, int* b, int bits)
{
    int len = 1 << (bits * 3);
    int dif = 0;
    for(int i=0; i < len; i++) {
        dif += abs(a[i] - b[i]);
    }
    return dif;
}
