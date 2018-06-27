#include <stdint.h>

typedef uint8_t uint8;
typedef uint16_t uint16;

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>

#include <huffman.h>

int main(int argc, char** argv)
{
    char* filename = argv[1];
    int width, height, n;

    uint8* pixels = stbi_load(filename, &width, &height, &n, 0);
    int size = width * height * n;
    
    printf("n: %d\n", n);

    int bit_count = 0;

     // count frequency of each byte in the data
    std::vector<huff_node> hn = byte_frequency(pixels, size); 
    auto nonzero_iterator = std::find_if(hn.begin(), hn.end(), [](const huff_node& a) ->    
         bool {return a.freq != 0;});
    hn = std::vector<huff_node> (nonzero_iterator, hn.end());

    build_huffman_tree(hn);

    for(int j=0; j < hn.size(); j++) 
        bit_count += hn[j].freq * hn[j].bit_count;

    printf("normal huffman ratio: %f\n", (float)size * 8 / bit_count);

}
