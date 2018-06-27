
#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#include <stdio.h>

// Image Type
#include <image.h>

// GUI
#include <imgui/local.h>  // reset_image, texture_image,

// STL
#include <vector>
#include <string>
#include <algorithm>

#define MAX_SIDE 200
#define MAX_IMAGES 6
#define MAX_BITS 4

// starting at bit s, get f bits to the right of s shifted all the way to the right,
// while discarding bits outside of the range [s, s-f)
// ex: val = 1001101, bits_range(val,4,2) -> 00000011
#define BIT_RANGE(val, s, f) (((val) &= (1 << (s)) - 1) >> ((s) - (f)))

struct histogram
{
    void set_histogram(int bits)
    {
      //allocates memory for max possible number of bits for RGB hence 1 shifted 12 (3 * 4) Times
      //does this once
        if (!values)
            values = (int*)malloc(sizeof(int) * (1 << 12));

        // only set the amount of bits needed to zero, hence 1 << (bits * 3)
        //just clears the necessary amount of memmory
        memset(values, 0, sizeof(int) * (1 << (bits * 3)));

        uint8* pixels = image.pixels;
        int len = image.width * image.height * RGBA;

        for(int i=0; i < len; i += RGBA) {
            int r = BIT_RANGE(pixels[ i ], 8, bits) << (bits * 2);
            int g = BIT_RANGE(pixels[i+1], 8, bits) << bits;
            int b = BIT_RANGE(pixels[i+2], 8, bits);
            values[r | g | b]++;
        }
    }

    int* values = NULL;
    int difference = 0;
    Image image;
};

// difference between the frequnecy of color codes between two images
int hist_dif(int* a, int* b, int bits)
{
    int len = 1 << (bits * 3);
    int dif = 0;
    for(int i=0; i < len; i++) {
        dif += abs(a[i] - b[i]);
    }
    return dif;
}

//sets up the database and opens all the images at once
// returns a sorted vector from most similar to least similar
std::vector<histogram> db_retrieve(histogram& main_histo, int bits)
{
    // all the filenames in 'db' folder
    static std::vector<std::string> fnames = dirlist("db", FILES_ONLY);
    static std::vector<histogram> db(fnames.size());
    static int init = 0;

    main_histo.set_histogram(bits);

    // Create texture for all the images in 'db' directory
    if (!init) {
        for(int i=0; i < db.size(); i++) {
            db[i].image.pixels = stbi_load(("db/"+fnames[i]).c_str(), &db[i].image.width, &db[i].image.height, &db[i].image.n, RGBA);
            texture_image(&db[i].image);
        }
        init = 1;
    }

    // Get the histogram difference, and return sorted vector
    for(int i=0; i < db.size(); i++) {
        db[i].set_histogram(bits);
        db[i].difference = hist_dif(db[i].values, main_histo.values, bits);
    }

    // sort vector of historgrams ascendingly based on histogram difference
    std::sort(db.begin(), db.end(), [](const histogram& a, const histogram& b) -> bool { return a.difference < b.difference;});

    return db;
}

int main()
{
    int bits = 2;
    int prev_bits = 2;
	std::vector<histogram> db_histograms;//stores all of the histograms clculated from database
    histogram main_histo;

    bool slider_window;
    bool h_dif;

    // Setup window
    glfwSetErrorCallback(error_callback);
    if (!glfwInit())
        return 1;

    // OpenGl version 3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create Window and init glew
    GLFWwindow* window = glfwCreateWindow(950,500, "Similarity Based Image Retrieval", NULL, NULL);
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
        // Select image
        if (main_histo.image.texture_loaded) {
            ImGui::Image((void*)main_histo.image.texture, resize_ui(main_histo.image.width, main_histo.image.height, MAX_SIDE));
            ImGui::SameLine();
            prev_bits = bits;
            ImGui::VSliderInt("##int", ImVec2(20,160), &bits, 1, MAX_BITS);
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
            db_histograms = db_retrieve(main_histo, bits);
        }

        // Slider moved
        if (bits != prev_bits)
            db_histograms = db_retrieve(main_histo, bits);

        // display the results
        if(main_histo.image.texture_loaded) {

            // display top MAX_IMAGES results    
            for(int i=0; i < MAX_IMAGES; i++) {
                ImGui::Image((void*)db_histograms[i].image.texture, resize_ui(db_histograms[i].image.width, db_histograms[i].image.height, MAX_SIDE));
                ImGui::SameLine();
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
        ImGui::End();

        // Rendering on the screen
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
