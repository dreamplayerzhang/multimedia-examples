#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
//#pragma GCC poison texture_image
#pragma GCC diagnostic ignored "-Wwrite-strings"

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#include <stdio.h>
#include <math.h>

// Image Type
#include <image.h>

#include <utilities.h> //BIT_RANGE

// GUI
#include <imgui/local.h>  // reset_image, texture_image,

// STL
#include <vector>
#include <string>
#include <algorithm>

#include <iostream>

#define MAX_SIDE 400

static void error_callback(int error, const char* description);

// if thres is greater than zero, use RGB value to check difference
// else use color coding with n bits
void highlight_different(Image img, int thres, int n)
{
    int len = img.width * img.height * 4;

    for(int y=0; y < img.height-1; y++) {

        uint8* row =  img.pixels + (y * img.width * RGBA);
        uint8* row_next = img.pixels + ((y+1) * img.width * RGBA);

        for(int x=0; x < img.width-1; x++) {

            uint8* pixel       = row + (x * RGBA);
            uint8* pixel_right = pixel + RGBA;
            uint8* pixel_below = row_next + (x * RGBA); // x plus width worth of bytes

            if (thres != 0) {

                int diff_right = 0;
                int diff_below = 0;

                for(int i=0; i < 3; i++) {
                    diff_right += abs(pixel[i] - pixel_right[i]);
                    diff_below += abs(pixel[i] - pixel_below[i]);
                }

                if (diff_right > thres || diff_below > thres) {
                    pixel[0] = 255;
                    pixel[1] = 0;
                    pixel[2] = 0;
                }
            }
            else {
                // current pixel value
                int cp = (BIT_RANGE(pixel[0], 8, n) << (n * 2)) | (BIT_RANGE(pixel[1], 8, n) << n) | (BIT_RANGE(pixel[2], 8, n));

                // // right value
                int rp = (BIT_RANGE(pixel_right[0], 8, n) << (n * 2)) | (BIT_RANGE(pixel_right[1], 8, n) << n) | (BIT_RANGE(pixel_right[2], 8, n));

                // // pixel below value
                int ub = (BIT_RANGE(pixel_below[0], 8, n) << (n * 2)) | (BIT_RANGE(pixel_below[1], 8, n) << n) | (BIT_RANGE(pixel_below[2], 8, n));

                if (cp != rp || cp != ub) {
                    pixel[0] = 255;
                    pixel[1] = 0;
                    pixel[2] = 0;
                }
            }
        }
    }
}

int main()
{

    Image a;
    Image original;

    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;

    // OpenGl version 3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create Window and init glew
    GLFWwindow* window = glfwCreateWindow(1400,700, "Transtion Function", NULL, NULL);
    glfwMakeContextCurrent(window);
    glewInit();

    // Setup ImGui binding
    ImGui_ImplGlfwGL3_Init(window, true);
    ImVec4 clear_color = ImColor(114, 144, 154);

    int thres = 1;
    int prev_thres = 1;
    int bits = 1;
    int prev_bits = 1;
    int pixel_count = 1;

while (!glfwWindowShouldClose(window)) {

    glfwPollEvents();
    ImGui_ImplGlfwGL3_NewFrame();
    ImGui::Begin("Slider Window");

    // Select image
    if (a.texture_loaded) {
        ImGui::Image((void*)original.texture, resize_ui(a.width, a.height));
        ImGui::SameLine();
        ImGui::Image((void*)a.texture, resize_ui(a.width, a.height));

        // slider for normal threshold
        ImGui::SameLine();
        prev_thres = thres;
        ImGui::PushID("set1");
        ImGui::VSliderInt("##int", ImVec2(20,160), &thres, 1, 765);
        ImGui::PopID();

        // slider for color code difference
        ImGui::SameLine();
        prev_bits = bits;
        ImGui::PushID("set2");
        ImGui::VSliderInt("##int", ImVec2(20,160), &bits, 1, 8);
        ImGui::PopID();
    }

    if (ImGui::Button("Select Image ..."))
        ImGui::OpenPopup("select 0");
    std::string fname = image_select(0);
    ImGui::SameLine();  
    if (ImGui::Button("Save Image"))
        stbi_write_png("save.png", a.width, a.height, RGBA, a.pixels, 0);

    // Image Selected, run the differences
    if (fname != "") {
        reset_image(&a);
        reset_image(&original);
        a.pixels = stbi_load(fname.c_str(), &a.width, &a.height, &a.n, RGBA);
        assert(a.pixels != NULL);
        original = a;
        original.pixels = (uint8*)malloc(a.width * a.height * RGBA);
        memcpy(original.pixels, a.pixels, a.width * a.height * RGBA);
        highlight_different(a, thres, 0);
        texture_image(&a);
        texture_image(&original);
    }

    if (prev_thres != thres) {
        memcpy(a.pixels, original.pixels, a.width * a.height * RGBA);
        reset_texture(&a);
        highlight_different(a, thres, 0);
        texture_image(&a);
    }

    if (prev_bits != bits) {
        memcpy(a.pixels, original.pixels, a.width * a.height * RGBA);
        reset_texture(&a);
        highlight_different(a, 0, bits);
        texture_image(&a);
    }

    ImGui::End();

        // Rendering on the screening
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(clear_color.x, clear_color.y, clear_color.z, clear_color.w);
        glClear(GL_COLOR_BUFFER_BIT);
        ImGui::Render();
        glfwSwapBuffers(window);

    }

    // Cleanup
    ImGui_ImplGlfwGL3_Shutdown();
    glfwTerminate();

    return 0;
}

static void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error %d: %s\n", error, description);
}
