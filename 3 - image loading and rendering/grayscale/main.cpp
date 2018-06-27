// ImGui headers
#include <image.h>
#include <imgui/local.h>

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#define MAX_SIDE_SIZE 350

static void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error %d: %s\n", error, description);
}


int main()
{
    Image a;
    Image b;

    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;

    // OpenGl version 3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create Window and init glew
    GLFWwindow* window = glfwCreateWindow(950,500, "Grayscale Program", NULL, NULL);
    glfwMakeContextCurrent(window);

    glewInit();

    // Setup ImGui binding
    ImGui_ImplGlfwGL3_Init(window, true);

    ImVec4 clear_color = ImColor(114, 144, 154);

while (!glfwWindowShouldClose(window))
{
    glfwPollEvents();
    ImGui_ImplGlfwGL3_NewFrame();

    ImGui::Begin("Slider Window");

    if (a.texture_loaded && b.texture_loaded) {
        ImGui::Image((void*)a.texture, resize_ui(a.width, a.height, MAX_SIDE_SIZE));
        ImGui::SameLine();
        ImGui::Image((void*)b.texture, resize_ui(b.width, b.height, MAX_SIDE_SIZE));
    }
        
    if (ImGui::Button("Select Image"))
        ImGui::OpenPopup("select 0");

    std::string tmp = image_select(0); //opens the file list and assigns to tmp

    if (tmp != "") {
        reset_image(&a);
        reset_image(&b);
        a.pixels = stbi_load(tmp.c_str(), &a.width, &a.height, &a.n, RGBA);
        texture_image(&a);
        
        // allocate new memory for grayscale image and convert image to grayscale
        int length = a.width * a.height * RGBA;
        b.pixels = (uint8*)malloc(length);
        b.width = a.width;
        b.height = a.height;
        b.n = a.n;

        for (int i=0; i < length; i+= RGBA) {

            float R = a.pixels[i];
            float G = a.pixels[i+1];
            float B = a.pixels[i+2];
            float A = a.pixels[i+3];
            
            int Y = (0.3 * R) + (0.6 * G) + (0.1 * B);

            b.pixels[i] = Y;
            b.pixels[i+1] = Y;
            b.pixels[i+2] = Y;
            b.pixels[i+3] = A;
        }

        texture_image(&b);
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
} //end of main
