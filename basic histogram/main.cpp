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

// GUI
#include <imgui/local.h>  // reset_image, texture_image,

// STL
#include <vector>
#include <string>
#include <algorithm>

#include <iostream>

//resizes image
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


// Local functions
static ImGuiWindowFlags static_window();
static void error_callback(int error, const char* description);

int main ()
{
  Image a;
  //histogram hist_a;
  float red[256];
  float green[256];
  float blue[256];
  float gray[256];


  float max_red = 0.0;
  float max_green = 0.0;
  float max_blue = 0.0;
  float max_gray = 0.0;

  #define r_gray 0.299f
  #define g_gray 0.587f
  #define b_gray 0.114f
  #define MAX(a, b) (a > b ? a : b);

  std::vector<std::string> fnames = {"",""};
//setup window
  glfwSetErrorCallback(error_callback);
  if (!glfwInit())
      return 1;

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  GLFWwindow* window = glfwCreateWindow(950,500, "Image Edit Basic", NULL, NULL);
  //glfwSetWindowPos(window, -1500, 100);
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

      ImGui::SetNextWindowSize(ImVec2(900,1000), ImGuiSetCond_FirstUseEver);
      ImGui::Begin("Image Embedding Window", &slider_window, static_window());
      {
        // Image A
        ImGui::BeginGroup();
        {
          if (a.texture_loaded)
              ImGui::Image((void*)a.texture, resize(a.width, a.height));
          if (ImGui::Button("Image Frame..."))
              ImGui::OpenPopup("select 0");
          std::string tmp = image_select(0); //opens the file list and assigns to tmp
          if (tmp != "")
          {
            fnames[0] = tmp;
            reset_image(&a);
            a.pixels = stbi_load(fnames[0].c_str(), &a.width, &a.height, &a.n, RGBA);
            assert(a.pixels != NULL);
            texture_image(&a);

            // reset arrays
            memset(red, 0, sizeof(float) * 256);
            memset(green, 0, sizeof(float) * 256);
            memset(blue, 0, sizeof(float) * 256);
            memset(gray, 0, sizeof(float) * 256);

            for(int y = 0; y < a.height; y++)
            {
              uint8* row = a.pixels + (y * a.width *RGBA);

              for(int x = 0; x < a.width; x++)
              {
                uint8* pixel = row + (x*RGBA);

                red[pixel[0]] = red[pixel[0]] + 1.0f;
                green[pixel[1]] = green[pixel[1]] + 1.0f;
                blue[pixel[2]] = blue[pixel[2]] + 1.0f;
                int gray_value = roundf((pixel[0] * r_gray) + (pixel[1] * g_gray) + (pixel[2] * b_gray));
                gray[gray_value] = gray[gray_value] + 1.0f;
              }
            }

            max_red = 0.0f;
            max_green = 0.0f;
            max_blue = 0.0f;
            max_gray = 0.0f;

            for(int i=0; i < 256; i++) {
              max_red = MAX(red[i], max_red);
              max_green = MAX(green[i], max_green);
              max_blue = MAX(blue[i], max_blue);
              max_gray = MAX(gray[i], max_gray);
            }

            // reset arrays
          }
          if (a.texture_loaded)
          {
          // const char* label, const float* values, int values_count, int values_offset = 0, const char* overlay_text = NULL,
          // float scale_min = FLT_MAX, float scale_max = FLT_MAX, ImVec2 graph_size = ImVec2(0,0), int stride = sizeof(float));
            ImGui::PlotHistogram("", red, 256, 0, "RED Histogram", 0.0f, max_red, ImVec2(400, 250));
            ImGui::SameLine();
            ImGui::PlotHistogram("", green, 256, 0, "GREEN Histogram", 0.0f, max_green, ImVec2(400,250));
            ImGui::PlotHistogram("", blue, 256, 0, "BLUE Histogram", 0.0f, max_blue, ImVec2(400,250));
            ImGui::SameLine();
            ImGui::PlotHistogram("", gray, 256, 0, "GRAY Histogram", 0.0f, max_gray, ImVec2(400,250));
          }

        }
        ImGui::EndGroup();

      }
      ImGui::End();

      // Gl Rendering
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
