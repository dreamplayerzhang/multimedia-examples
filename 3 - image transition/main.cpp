#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
//#pragma GCC poison texture_image
#pragma GCC diagnostic ignored "-Wwrite-strings"

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#include <stdio.h>

// Image Type
#include <image.h>

// GUI
#include <imgui/imgui.h>
#include <imgui/local.h>  // reset_image, texture_image,
#include <imgui/imgui_glfw.h>

// STL
#include <vector>
#include <string>

// Local functions
static ImGuiWindowFlags static_window();
static void error_callback(int error, const char* description);

extern "C" void image_transtition(uint8* pixels, Image a, Image b, float t)
{
    int len = a.width * a.height * RGBA;
    for(int i=0; i < len; i++)
        pixels[i] = roundf((a.pixels[i] - b.pixels[i]) * t  +  b.pixels[i]);
}

ImVec2 resize(int x, int y)
{
    if (x > 200 && y > 200) {
        float d = (x > y ? x : y) / 200;
        return ImVec2( x/d, y/d );
    }
    return ImVec2(x, y);
}

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

int main()
{
    Image a;
    Image b;
    Image r; //resultant image

    float t = 0.0f;
    float old_t = t;
    std::vector<std::string> fnames = {"",""};

    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow(600,350, "Transtion Function", NULL, NULL);
    // glfwSetWindowPos(window, -1500, 100);
    glfwMakeContextCurrent(window);

    glewInit();

    // Setup ImGui binding
    ImGui_ImplGlfwGL3_Init(window, true);

    bool slider_window = true;
    bool show_another_window = false;
    ImVec4 clear_color = ImColor(114, 144, 154);

    // Main loop
    while (!glfwWindowShouldClose(window))
    {
      glfwPollEvents();
      ImGui_ImplGlfwGL3_NewFrame();

      ImGui::SetNextWindowSize(ImVec2(600,100), ImGuiSetCond_FirstUseEver);
      ImGui::Begin("Slider Window");
      {
        // Image A
        ImGui::BeginGroup();
        {
            if (a.texture_loaded)
                ImGui::Image((void*)a.texture, resize(a.width, a.height));
            if (ImGui::Button("Image A"))
                ImGui::OpenPopup("select 0");
            std::string tmp = image_select(0); //opens the file list and assigns to tmp
            if (tmp != "") {
                fnames[0] = tmp;
                reset_image(&a);
                reset_image(&r);
                a.pixels = stbi_load(fnames[0].c_str(), &a.width, &a.height, &a.n, RGBA);
                texture_image(&a);
              }
        }
        ImGui::EndGroup();
        // Image R
        ImGui::SameLine();
        ImGui::BeginGroup();
        {
          // if new a and new b are loaded so reset r
          if (a.texture_loaded && b.texture_loaded && !r.texture_loaded) {
            r.width = a.width;
            r.height = a.height;
            r.pixels = (uint8*)malloc(a.width * a.height * RGBA);
            goto create_r;
          }

          // slider moved, deletes old texture and overwrites with new texture
          if (old_t != t) {
            if (r.texture_loaded) {
              r.texture_loaded = 0;
              glDeleteTextures(1, &r.texture);
            }
            create_r:
            if (r.pixels) {
              image_transtition(r.pixels, b, a, t);
              texture_image(&r);
            }
            old_t = t;
          }

          // display texture
          if (r.texture_loaded) {
            ImGui::Image((void*)r.texture, resize(r.width, r.height), ImVec2(0,0), ImVec2(1,1), ImVec4(1,1,1,1), ImVec4(0,255,0,255));
            if (ImGui::Button("Save")) {
              char sname[1000];
              sprintf(sname, "%d.png", (int)(t*100));
              stbi_write_png(sname, a.width, a.height, 4, r.pixels, 0);
            }
          }
        }
        ImGui::EndGroup();

        // Image B
        ImGui::SameLine();
        ImGui::BeginGroup();
        {
          if (b.texture_loaded)
            ImGui::Image((void*)b.texture, resize(b.width, b.height));
          if (ImGui::Button("Image B"))
            ImGui::OpenPopup("select 1");
          std::string tmp = image_select(1);
            if (tmp != "") {
              fnames[1] = tmp;
              reset_image(&b);
              reset_image(&r);
              b.pixels = stbi_load(fnames[1].c_str(), &b.width, &b.height, &b.n, RGBA);
              texture_image(&b);
            }
          }
          ImGui::EndGroup();

          ImGui::SliderFloat("Transition t", &t, 0.0f, 1.0f); //transition factor is assigned to t
      } //end of slider window
      ImGui::End();

      // Gl Rendering
      int display_w, display_h;
      glfwGetFramebufferSize(window, &display_w, &display_h);
      glViewport(0, 0, display_w, display_h);
      glClearColor(clear_color.x, clear_color.y, clear_color.z, clear_color.w);
      glClear(GL_COLOR_BUFFER_BIT);
      ImGui::Render();
      glfwSwapBuffers(window);

    }  //end of while

    // Cleanup
    ImGui_ImplGlfwGL3_Shutdown();
    glfwTerminate();

    return 0;
} //end of main

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
