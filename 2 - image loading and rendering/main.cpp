// ImGui headers
#include <image.h>
#include <imgui/local.h>

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#define MAX_SIDE_SIZE 500

static void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error %d: %s\n", error, description);
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

        if (sindex == -1 )
        return "";
    else
        return current_dir + "/" + selected[s];
}

int main()
{

    Image a;
    std::string fname = "";

    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;

    // OpenGl version 3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create Window and init glew
    GLFWwindow* window = glfwCreateWindow(950,500, "Example Program", NULL, NULL);
    glfwMakeContextCurrent(window);

    glewInit();

    // Setup ImGui binding
    ImGui_ImplGlfwGL3_Init(window, true);

    ImVec4 clear_color = ImColor(114, 144, 154);

    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();
        ImGui_ImplGlfwGL3_NewFrame();

        ImGui::SetNextWindowSize(ImVec2(600,100), ImGuiSetCond_FirstUseEver);
        ImGui::Begin("Slider Window");
        // Image A
        ImGui::BeginGroup();

            if (a.texture_loaded)
                ImGui::Image((void*)a.texture, resize_ui(a.width, a.height, MAX_SIDE_SIZE));
                
            if (ImGui::Button("Select Image"))
                ImGui::OpenPopup("select 0");

            std::string tmp = image_select(0); //opens the file list and assigns to tmp

            if (tmp != "") {
                fname = tmp;
                reset_image(&a);
                a.pixels = stbi_load(fname.c_str(), &a.width, &a.height, &a.n, RGBA);
                texture_image(&a);
                free_image(&a);
            }

        ImGui::EndGroup();
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
