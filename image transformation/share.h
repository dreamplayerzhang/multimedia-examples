#pragma once

#include <GL/glew.h>
#include <ctype.h>
#include <math.h>
#define RGBA 4

typedef uint8_t uint8;

typedef struct {
    GLuint texture;
    int texture_loaded;
    int width;
    int height;
    int n;
    uint8* pixels;
} Image;
