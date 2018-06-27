#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#include <stdio.h>
#include <math.h>

// Image Type
#include <image.h>

// GUI
#include <imgui/local.h>  // reset_image, texture_image, resize_ui, etc.

// STL
#include <vector>
#include <string>
#include <algorithm>

// Local functions
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

  #define r_gray 0.3f
  #define g_gray 0.6f
  #define b_gray 0.1f

  #define MAX(a, b) (a > b ? a : b);

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
      ImGui::Begin("Image Embedding Window", &slider_window);
      {
      if (a.texture_loaded)
          ImGui::Image((void*)a.texture, resize_ui(a.width, a.height));

      if (ImGui::Button("Select Image"))
          ImGui::OpenPopup("select 0");

      //opens the file list and assigns to tmp
      std::string tmp = image_select(0); 
      if (tmp != "") {
        
        reset_image(&a);
        a.pixels = stbi_load(tmp.c_str(), &a.width, &a.height, &a.n, RGBA);
        assert(a.pixels != NULL);
        texture_image(&a);

        // reset arrays
        memset(red, 0, sizeof(float) * 256);
        memset(green, 0, sizeof(float) * 256);
        memset(blue, 0, sizeof(float) * 256);
        memset(gray, 0, sizeof(float) * 256);

        int length = a.width * a.height * RGBA;

        for(int i = 0; i < length; i+= RGBA)
        {
            red[a.pixels[i]] +=  1.0f;
            green[a.pixels[i+1]] += 1.0f;
            blue[a.pixels[i+2]] += 1.0f;
            
            int grayscale = roundf((a.pixels[i] * r_gray) + (a.pixels[i+1] * g_gray) + (a.pixels[i+2] * b_gray));
            gray[grayscale] += + 1.0f;
        }

        max_red = 0.0f;
        max_green = 0.0f;
        max_blue = 0.0f;
        max_gray = 0.0f;

        // compute max
        for(int i=0; i < 256; i++) {
          max_red = MAX(red[i], max_red);
          max_green = MAX(green[i], max_green);
          max_blue = MAX(blue[i], max_blue);
          max_gray = MAX(gray[i], max_gray);
        }
      }

      // histogram
      if (a.texture_loaded) {
        ImGui::PlotHistogram("", red, 256, 0, "RED Histogram", 0.0f, max_red, ImVec2(400, 250));
        ImGui::SameLine();
        ImGui::PlotHistogram("", green, 256, 0, "GREEN Histogram", 0.0f, max_green, ImVec2(400,250));
        ImGui::PlotHistogram("", blue, 256, 0, "BLUE Histogram", 0.0f, max_blue, ImVec2(400,250));
        ImGui::SameLine();
        ImGui::PlotHistogram("", gray, 256, 0, "GRAY Histogram", 0.0f, max_gray, ImVec2(400,250));
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