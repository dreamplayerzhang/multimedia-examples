#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
//#pragma GCC poison texture_image
#pragma GCC diagnostic ignored "-Wwrite-strings"

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#include <stdio.h>

#include "histogram.h"

// Image Type
#include <image.h>

// GUI
//for user interface
#include <imgui/local.h>  // reset_image, texture_image,

// STL
#include <vector>
#include <string>
#include <algorithm>

#define MAX_SIDE 200
#define MAX_IMAGES 6

//resizes image
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

//sets up the database and opens all the images at once
//returns a sorted vector from most similar (0 or close to 0 differnce)
// to least similar
std::vector<histogram> measure(histogram& mh, int bits)
{
    static std::vector<std::string> fnames = dirlist("db", FILES_ONLY);
    static std::vector<histogram> db(fnames.size());
    static int init = 0;

    // Create texture for all the images in 'db' directory
    //does this for all images once
    if (!init) {
        for(int i=0; i < db.size(); i++) {
            db[i].image.pixels = stbi_load(("db/"+fnames[i]).c_str(), &db[i].image.width, &db[i].image.height, &db[i].image.n, RGBA);
            texture_image(&db[i].image);
        }
        init = 1;
    }

    // Get the histogram difference, and return sorted vector
    mh.set(bits);
    for(int i=0; i < db.size(); i++) {
        db[i].set(bits);
        db[i].difference = hist_dif(db[i].values, mh.values, bits);
    }
    std::sort(db.begin(), db.end(), [](const histogram& a, const histogram& b) -> bool { return a.difference < b.difference;});

    return db;
}

int main()
{
    int bits = 2;
    int prev_bits = 2;
	std::vector<histogram> db_histograms;//stores all of the histograms clculated from database
    histogram main_histo;

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
            if (main_histo.image.texture_loaded) {
                ImGui::Image((void*)main_histo.image.texture, resize(main_histo.image.width, main_histo.image.height));
                ImGui::SameLine();
                prev_bits = bits;
                ImGui::VSliderInt("##int", ImVec2(20,160), &bits, 1, 4);
            }

            // Image Selected, run the differences
            if (ImGui::Button("Select Image ..."))
                ImGui::OpenPopup("select 0");
            std::string fname = image_select(0); //image select opens all the image list and assigns to fname
            if (fname != "") {
                reset_image(&main_histo.image);
                main_histo.image.pixels = stbi_load(fname.c_str(), &main_histo.image.width, &main_histo.image.height, &main_histo.image.n, RGBA);
                assert(main_histo.image.pixels != NULL);
                texture_image(&main_histo.image);
                db_histograms = measure(main_histo, bits);
            }

            // Slider moved
            if (bits != prev_bits)
                db_histograms = measure(main_histo, bits);

            // display the results
            if(main_histo.image.texture_loaded) {
                for(int i=0; i < MAX_IMAGES; i++) {
                    ImGui::Image((void*)db_histograms[i].image.texture, resize(db_histograms[i].image.width, db_histograms[i].image.height));
                    ImGui::SameLine();
                }
                //display the histogram differnce for each displayed image
                for(int p=0;p<5;p++)
                {
                  ImGui::NewLine();
                }
                ImGui::Separator();
                ImGui::Text("HISTOGRAM DIFFERENCE");
                ImGui::Separator();
                ImGui::Separator();
                for(int i=0; i < MAX_IMAGES; i++){
                  int p= db_histograms[i].difference;
                  ImGui::Text("Image %i: %i", i+1, p);
                  ImGui::Separator();
                }
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
