#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
//#pragma GCC poison texture_image
#pragma GCC diagnostic ignored "-Wwrite-strings"

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
// #define STB_IMAGE_WRITE_IMPLEMENTATION
// #include <stb/stb_image_write.h>

#include <stdio.h>
#include <math.h>

// Image Type
#include <image.h>

// GUI
#include <imgui/local.h>  // reset_image, texture_image,

// STL
#include <vector>
#include <string>
#include <algorithm>

#include <iostream>

#define MAX_SIDE 400
#define BIT_RANGE(val, s, f) (((val) &= (1 << (s)) - 1) >> ((s) - (f)))
#define DIFF(a, b) (abs((a) - (b)))

ImVec2 resize(int x, int y)
{
    if (x > MAX_SIDE && y > MAX_SIDE) {
        float d = (x > y ? x : y) / MAX_SIDE;
        return ImVec2( x/d, y/d );
    }
    return ImVec2(x, y);
}

// Local functions
static ImGuiWindowFlags static_window();
static void error_callback(int error, const char* description);

typedef void(*transform_function)(uint8* pixels, Image a, Image b, float t);

std::string image_select(int s)
{
    static std::vector<std::string> selected = {"",""};
    ImGui::SameLine();
    ImGui::Text(selected[s] == "" ? "<None>" : selected[s].c_str());

    std::string current_dir;
    int sindex;
    if  (s == 0)
        sindex = fs(selected[s], current_dir, "select 0");

    if (sindex == -1 )
        return "";
    else
        return current_dir + "/" + selected[s];
}

void gray(Image* img, float gray_slider)
{
    int len = img->width * img->height * RGBA;
    #define r_gray 0.299
    #define g_gray 0.587
    #define b_gray 0.114
    uint8* pixels = img->pixels;

    for(int i=0; i < len; i+=4) {
        uint8 g = gray_slider * roundf((pixels[i] * r_gray) + (pixels[i+1] * g_gray ) + (pixels[i+2] * b_gray));
        pixels[i]   = (pixels[i]   * (1.0f - gray_slider)) + g;
        pixels[i+1] = (pixels[i+1] * (1.0f - gray_slider)) + g;
        pixels[i+2] = (pixels[i+2] * (1.0f - gray_slider)) + g;
    }
}

int main()
{

    Image a;
    Image orig;

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

    bool slider_window;
    ImVec4 clear_color = ImColor(114, 144, 154);

    float gray_trans = 0.0;
    float prev_gray_trans = 0.0;

    // Main loop
    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();
        ImGui_ImplGlfwGL3_NewFrame();

        ImGui::SetNextWindowSize(ImVec2(600,100), ImGuiSetCond_FirstUseEver);
        ImGui::Begin("Slider Window", &slider_window, static_window());
        {
            // Select image
            if (a.texture_loaded) {
                ImGui::Image((void*)a.texture, resize(a.width, a.height));
                ImGui::SameLine();
                prev_gray_trans = gray_trans;
                ImGui::VSliderFloat("##float", ImVec2(20,160), &gray_trans, 0.0, 1.0);
            }

            // Image Selected, run the differences
            if (ImGui::Button("Select Image ..."))
                ImGui::OpenPopup("select 0");

            std::string fname = image_select(0);
            if (fname != "") {
                reset_image(&a);
                reset_image(&orig);
                a.pixels = stbi_load(fname.c_str(), &a.width, &a.height, &a.n, RGBA);
                assert(a.pixels != NULL);
                orig.pixels = (uint8*)malloc(a.width*a.height*RGBA);
                memcpy(orig.pixels, a.pixels, a.width*a.height*RGBA);
                gray(&a, gray_trans);
                texture_image(&a);
            }

            if (prev_gray_trans != gray_trans) {
                reset_texture(&a);
                memcpy(a.pixels, orig.pixels, a.width*a.height*RGBA);
                gray(&a, gray_trans);
                texture_image(&a);
            }

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

ImGuiWindowFlags static_window()
{
    static bool no_titlebar = false;
    static bool no_border = true;
    static bool no_resize = false;
    static bool no_move = false;
    static bool no_scrollbar = false;
    static bool no_collapse = false;
    static bool no_menu = true;

    ImGuiWindowFlags window_flags = 0;
    if (no_titlebar)  window_flags |= ImGuiWindowFlags_NoTitleBar;
    if (!no_border)   window_flags |= ImGuiWindowFlags_ShowBorders;
    if (no_resize)    window_flags |= ImGuiWindowFlags_NoResize;
    if (no_move)      window_flags |= ImGuiWindowFlags_NoMove;
    if (no_scrollbar) window_flags |= ImGuiWindowFlags_NoScrollbar;
    if (no_collapse)  window_flags |= ImGuiWindowFlags_NoCollapse;
    if (!no_menu)     window_flags |= ImGuiWindowFlags_MenuBar;
    return window_flags;
}
