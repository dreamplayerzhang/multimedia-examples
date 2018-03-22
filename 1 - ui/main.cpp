// ImGui headers
#include <image.h>
#include <imgui/local.h>

static void error_callback(int error, const char* description)
{
    fprintf(stderr, "Error %d: %s\n", error, description);
}

int main()
{
    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;

    // OpenGl version 3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create Window and init glew
    GLFWwindow* window = glfwCreateWindow(950,500, "Demo 1", NULL, NULL);
    glfwMakeContextCurrent(window);
    glewInit();

    // Setup ImGui binding
    ImGui_ImplGlfwGL3_Init(window, true);

    ImVec4 clear_color = ImColor(114, 144, 154);
    int x = 0;

    while (!glfwWindowShouldClose(window)) {

        // user events such as clicking, typing, and moving cursor
        glfwPollEvents();
        ImGui_ImplGlfwGL3_NewFrame();

        // UI components
        ImGui::Begin("any window title");
        if (ImGui::Button("CLICK ME"))
            x++;
        ImGui::Text("X: %d", x);
        ImGui::End();

        // window size
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);

        // clear the screen
        glViewport(0, 0, display_w, display_h);
        glClearColor(clear_color.x, clear_color.y, clear_color.z, clear_color.w);
        glClear(GL_COLOR_BUFFER_BIT);

        // finally render
        ImGui::Render();
        glfwSwapBuffers(window);
    }
    // Cleanup
    ImGui_ImplGlfwGL3_Shutdown();
    glfwTerminate();
}
