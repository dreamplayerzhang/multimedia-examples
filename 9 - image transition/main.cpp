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


extern "C" void image_transtition(uint8* pixels, Image a, Image b, float t)
{
    int length = a.width * a.height * RGBA;
    for(int i=0; i < length; i++)
        pixels[i] = (b.pixels[i] * t) + (a.pixels[i] * (1 - t));
}

int main()
{
    Image a;
    Image b;
    Image r; //resultant image

    float t = 0.0f;
    float prev_t = t;

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
                ImGui::Image((void*)a.texture, resize_ui(a.width, a.height));

            if (ImGui::Button("Image A"))
                ImGui::OpenPopup("select 0");

            std::string tmp = image_select(0); //opens the file list and assigns to tmp
            if (tmp != "") {
                reset_image(&a);
                reset_image(&r);
                a.pixels = stbi_load(tmp.c_str(), &a.width, &a.height, &a.n, RGBA);
                texture_image(&a);
              }
        }
        ImGui::EndGroup();

        // Image R
        ImGui::SameLine();
        ImGui::BeginGroup();
        {
          // if new a and new b are loaded
          if (a.texture_loaded && b.texture_loaded) {
            
            // r is not loaded 
            if (!r.texture_loaded) {
              r.width = a.width;
              r.height = a.height;
              r.pixels = (uint8*)malloc(a.width * a.height * RGBA);
              image_transtition(r.pixels, a, b, t);
              texture_image(&r);
            }

            // t is moved
            else if (prev_t != t) {
              reset_texture(&r);
              prev_t = t;
              image_transtition(r.pixels, a, b, t);
              texture_image(&r);
            }
        }

          // display texture
          if (r.texture_loaded) {
            ImGui::Image((void*)r.texture, resize_ui(r.width, r.height), ImVec2(0,0), ImVec2(1,1), ImVec4(1,1,1,1), ImVec4(0,255,0,255));
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
            ImGui::Image((void*)b.texture, resize_ui(b.width, b.height));
          if (ImGui::Button("Image B"))
            ImGui::OpenPopup("select 1");
          std::string tmp = image_select(1);
            if (tmp != "") {
              reset_image(&b);
              reset_image(&r);
              b.pixels = stbi_load(tmp.c_str(), &b.width, &b.height, &b.n, RGBA);
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


