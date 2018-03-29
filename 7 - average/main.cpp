#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
//#pragma GCC poison texture_image
#pragma GCC diagnostic ignored "-Wwrite-strings"

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#include <algorithm>
#include <stdio.h>

// Image Type
#include <image.h>

// GUI
//for user interface
#include <imgui/local.h>  // reset_image, texture_image,

// Local functions
static ImGuiWindowFlags static_window();
static void error_callback(int error, const char* description);

//pops up the file list
std::string image_select(int s)
{
    static std::vector<std::string> selected = {"",""};
    ImGui::SameLine();
    ImGui::Text(selected[s] == "" ? "<None>" : selected[s].c_str());

    std::string current_dir;
    int sindex;
    if  (s == 0)
        sindex = fs(selected[s], current_dir, "select 0");
    else if (s == 1)
        sindex = fs(selected[s], current_dir, "select 1");

    if (sindex == -1 )
        return "";
    else
        return current_dir + "/" + selected[s];
}

topn(const int* freq, int* comp, int a_len, int b_len)
{
    int topFreq[b_len] = {0};

    int top = 0;
    for (int i=0; i < a_len; i++) {
        
        int min = topFreq[0];
        int min_index = 0;

        //find smallest frequency
        for(int j=1; j < b_len; j++) {
            if (topFreq[j] < min) {
                min = topFreq[j];
                min_index = j;
            }
        }

        //replace smallest in topFreq with freq if freq > min
        if (freq[i] > min) {
            comp[min_index] = i;
            topFreq[min_index] = freq[i];
        }
    }
}

int closest(int* a, int len, int m)
{
    int* x = std::lower_bound(a, a+len, m); //binary search
    if (x == a+len) 
        return *(a+len-1);
    return *x;
}

int main()
{
    Image a;
    Image r;

    int maxN = 256, prevMaxN = 256;

    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;

    // OpenGl version 3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create Window and init glew
    GLFWwindow* window = glfwCreateWindow(950,500, "Transtion Function", NULL, NULL);
    glfwMakeContextCurrent(window);
    glewInit();

    // Setup ImGui binding
    ImGui_ImplGlfwGL3_Init(window, true);

    bool slider_window;
    bool h_dif;
    ImVec4 clear_color = ImColor(114, 144, 154);

    // Main loop
    //so long as the window is not closed, this will run continuously
    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();
        ImGui_ImplGlfwGL3_NewFrame();

        ImGui::SetNextWindowSize(ImVec2(900,1000), ImGuiSetCond_FirstUseEver);
        ImGui::Begin("Slider Window", &slider_window, static_window());
        {
            // Select image
            if (r.texture_loaded) {
                ImGui::Image((void*)r.texture, resize_ui(r.width, r.height, 500));
                ImGui::SameLine();
                prevMaxN = maxN;
                ImGui::VSliderInt("##int", ImVec2(20,200), &maxN, 1, 256);
            }

            // Image Selected, run the differences
            if (ImGui::Button("Select Image ..."))
                ImGui::OpenPopup("select 0");
            std::string fname = image_select(0); //image select opens all the image list and assigns to fname
            if (fname != "") {
                reset_image(&a);
                reset_image(&r);
                a.pixels = stbi_load(fname.c_str(), &a.width, &a.height, &a.n, RGBA);
                r.width = a.width;
                r.height = a.height;
                r.n = a.n;
                r.pixels = (uint8*)malloc(r.width * r.height * RGBA);
                memcpy(r.pixels, a.pixels, r.width * r.height * RGBA);
                texture_image(&r);
            }

            if (prevMaxN != maxN) {
                
                memcpy(r.pixels, a.pixels, r.width * r.height * RGBA);
                reset_texture(&r);

                printf("%d\n", __LINE__);

                int R[256] = {0};
                int G[256] = {0};
                int B[256] = {0};

                int len = r.height * r.width;
                uint8* pixel = r.pixels;
                printf("%d\n", __LINE__);

                // frequencies
                for (int i=0; i < len; i++, pixel++) {
                    R[*pixel++]++;
                    G[*pixel++]++;
                    B[*pixel++]++;
                }
                printf("%d\n", __LINE__);

                int r_max[maxN] = {0};
                int g_max[maxN] = {0};
                int b_max[maxN] = {0};
                printf("%d\n", __LINE__);

                topn(R, r_max, 256, maxN);
                topn(G, g_max, 256, maxN);
                topn(B, b_max, 256, maxN);
                printf("%d\n", __LINE__);

                std::sort(r_max, r_max+maxN);
                std::sort(g_max, g_max+maxN);
                std::sort(b_max, b_max+maxN);
                printf("%d\n", __LINE__);

                for(int i=0; i < 256; i++)
                    printf("%d -> r: %d, g: %d, b: %d\n", i, R[i], G[i], B[i]);
                printf("--------------------------------------------------------\n");
                for(int i=0; i < maxN; i++)
                    printf("r: %d, g: %d, b: %d\n", r_max[i], g_max[i], b_max[i]);


                pixel = r.pixels;
                for (int i=0; i < len; i++, pixel += RGBA) {

                    uint8* red = pixel;
                    uint8* gre = pixel + 1;
                    uint8* blu = pixel + 2;

                    *red = closest(r_max, maxN, *red);;
                    *gre = closest(g_max, maxN, *gre);;
                    *blu = closest(b_max, maxN, *blu);;
                }

                texture_image(&r);
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
