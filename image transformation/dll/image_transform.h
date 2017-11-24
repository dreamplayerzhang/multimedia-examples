#ifndef IMAGE_TRANSFORM_DLL_H
#define IMAGE_TRANSFORM_DLL_H

#include <image.h>
#include <math.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef BUILDING_DLL
#define IMAGE_TRANSFORM_DLL __declspec(dllexport)
#else
#define IMAGE_TRANSFORM_DLL __declspec(dllimport)
#endif

void IMAGE_TRANSFORM_DLL image_transtition(uint8* pixels, Image a, Image b, float t);

#ifdef __cplusplus
}
#endif

#endif  // EXAMPLE_DLL_H
