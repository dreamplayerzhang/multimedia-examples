#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
#pragma GCC diagnostic ignored "-Wwrite-strings"

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#include <stdio.h>
#include <cmath>

// Image Type
#include <image.h>

// GUI
#include <imgui/local.h>  // reset_image, texture_image,

// STL
#include <vector>
#include <string>
#include <algorithm>

#define MAX_SIDE_LENGTH 350

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

// embed image b on a at location pos
void embed(Image* a, Image* b, Image* r, ImVec2 pos)
{
    reset_image(r);
    r->width = a->width;
    r->height = a->height;
    r->pixels = (uint8*)malloc(r->width * r->height * RGBA); //allocates new memory for r
    memcpy(r->pixels, a->pixels, r->width * r->height * RGBA); // copies pixel conetents of a to r

    ImVec2 ui_size = resize_ui(r->width, r->height, MAX_SIDE_LENGTH);// resizes image for user interface view aad and syncs mouse location to image placement
    ImVec2 n (r->width / ui_size.x, r->height / ui_size.y); // actual size and displayed size ratio

    int y_r = n.y * pos.y; //gets actual location mouse points to through the actual size to display ration and position of mouse on displayed image for height

    // for loop begins at directed postion y_r on image r(that has contents of image a but different location in memory) and rewrites pixel vaules on r from image b
    for(int y_b = 0; y_r < r->height && y_b < b->height; y_r++, y_b++) {

        uint8* r_row =  r->pixels + (y_r * r->width * RGBA); //itterates through r
        uint8* b_row =  b->pixels + (y_b * b->width * RGBA); //itterates through b

        int x_r = n.x * pos.x; //gets actual location mouse points to through the actual size to display ration and position of mouse on displayed image for width
        // for loop begins at directed postion x_r on image r(that has contents of image a but different location in memory) and rewrites pixel vaules on r from image b
        for(int x_b = 0; x_r < r->width && x_b < b->width; x_r++, x_b++) {

          uint8* r_pixel = r_row + (x_r * RGBA);
          uint8* b_pixel = b_row + (x_b * RGBA);

          r_pixel[0] = b_pixel[0]; //R
          r_pixel[1] = b_pixel[1]; //G
          r_pixel[2] = b_pixel[2]; //B
          r_pixel[3] = b_pixel[3]; //A
        }
    }
    texture_image(r);
}

void resize_image(Image* img, int new_w, int new_h)
{
    uint8* resized_img_pixels = (uint8*)malloc(new_w * new_h * RGBA); //allocates new memory for new_w x new_h multiplied byt RGB

    float w_ratio = (float)new_w / img->width; // ratio dictates how many pixels to copy from original image per pixel in width
    float h_ratio = (float)new_h / img->height; // ratio dictates how many pixels to copy from original image per pixel in height

    int max_x_repeat = w_ratio <= 1.0 ? 1 : w_ratio + 1.0;
    int max_y_repeat = h_ratio <= 1.0 ? 1 : h_ratio + 1.0;
    //if the ratio is less than or equal to one, then the max number of times the pixel can be repeated is once,
    //else it can be repeated more than once, specifically determined by the ratio

    for(int y=0; y < img->height; y++) {
        uint8* row = img->pixels + (y * img->width * RGBA); //itterates through original image row

        for(int x=0; x < img->width; x++) {
            uint8* pixel = row + (x * RGBA); //itterates through original image pixels

            for(int y_repeat=0; y_repeat < max_y_repeat; y_repeat++) {

                int length_y = (int)(y * h_ratio) + y_repeat;
                if (length_y >= new_h) // if image insert copying is out of bounds from image frame in relation to height, breaks
                    break;

                uint8* row_new_image = resized_img_pixels + (((int)(y * h_ratio) + y_repeat) * new_w * RGBA);// keeps track of orignal row transfer to new image

                for(int x_repeat=0; x_repeat < max_x_repeat; x_repeat++) {

                    int length_x = (int)(x * w_ratio) + x_repeat;
                    if (length_x >= new_w) // if image insert copying is out of bounds from image frame in relation to width, breaks
                        break;

                    uint8* pixel_new_image = row_new_image + (((int)(x * w_ratio) + x_repeat) * RGBA); //keeps track of what original pixels are copied to new image
                    //if enlarging, can repeat the copying of pixels
                    pixel_new_image[0] = pixel[0]; //R
                    pixel_new_image[1] = pixel[1]; //G
                    pixel_new_image[2] = pixel[2]; //B
                    pixel_new_image[3] = pixel[3]; //A
                }
            }
        }
    }

    reset_image(img);
    img->width = new_w;
    img->height = new_h;
    img->pixels = resized_img_pixels;
    texture_image(img);
}

// Local functions
static ImGuiWindowFlags static_window();
static void error_callback(int error, const char* description);


int main()
{
  Image a; // image frame
  Image r; //result image
  Image b; //image insert 
  char strw[10] = {0}, strh[10], w_input[10] = {0}, h_input[10] = {0}; //strw holds string value of width, strh holds string value of hight (both to display on UI)
  //w_input and h_input holds width and height values to convert to integer

  std::vector<std::string> fnames = {"",""};
//setup window
  glfwSetErrorCallback(error_callback);
  if (!glfwInit())
      return 1;

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  GLFWwindow* window = glfwCreateWindow(1000, 800, "Image Edit Basic", NULL, NULL);
  glfwMakeContextCurrent(window);

  glewInit();

  // Setup ImGui binding
  ImGui_ImplGlfwGL3_Init(window, true);

  ImVec4 clear_color = ImColor(114, 144, 154);

  // Main loop
  while (!glfwWindowShouldClose(window))
  {
      glfwPollEvents();
      ImGui_ImplGlfwGL3_NewFrame();

      ImGui::SetNextWindowSize(ImVec2(800,700), ImGuiSetCond_FirstUseEver);
      ImGui::Begin("Image Embedding Window");
      {
        // Image A
        ImGui::Columns(3, "mixed", false);
        {
            if (a.texture_loaded)
                ImGui::Image((void*)a.texture, resize_ui(a.width, a.height, MAX_SIDE_LENGTH));
            if (ImGui::Button("Image Frame..."))
                ImGui::OpenPopup("select 0");
            std::string tmp = image_select(0); //opens the file list and assigns to tmp
            if (tmp != "")
            {
              fnames[0] = tmp;
              reset_image(&a);
              reset_image(&r);
              a.pixels = stbi_load(fnames[0].c_str(), &a.width, &a.height, &a.n, RGBA); //reads in image frame
              assert(a.pixels != NULL);
              texture_image(&a);
            }
        }
        ImGui::NextColumn();

        //Image R
        //replace the rgb values from preset area of a with resized version of b
        // display texture
        if(a.texture_loaded && b.texture_loaded)
        {
          if (!r.texture_loaded)
              embed(&a, &b, &r, ImVec2(10.0, 10.0)); // if r texture is loaded, embeds b into preset spot in r with a copied pixels and saves to r

            ImVec2 canvas_pos = ImGui::GetCursorScreenPos();
            ImGui::ImageButton((void*)r.texture, resize_ui(r.width, r.height, MAX_SIDE_LENGTH), ImVec2(0,0), ImVec2(1,1), 0, ImVec4(0,0,0,0), ImVec4(1,1,1,1));
            if (ImGui::IsItemHovered()) {
              if (ImGui::IsMouseClicked(0)) {
                ImVec2 pos =  ImVec2(ImGui::GetIO().MousePos.x - canvas_pos.x, ImGui::GetIO().MousePos.y - canvas_pos.y); //off set postion from image r and the mose click postion on r
                embed(&a, &b, &r, pos); //embeds pasded on new postion
              }
            }

            if (ImGui::Button("Save"))
                stbi_write_png("save.png", r.width, r.height, RGBA, r.pixels, 0); //allows image to be saved
        }
        ImGui::NextColumn();

        //Image B
          if (b.texture_loaded)
          {
              ImGui::Image((void*)b.texture, resize_ui(b.width, b.height, MAX_SIDE_LENGTH));
              ImGui::PushID(0);
              ImGui::InputText(strw, w_input, 5); //gets user input on re-size constrain for width
              ImGui::PopID();
              ImGui::PushID(1);
              ImGui::InputText(strh, h_input, 5); //gets user input on re-size constrain for height
              ImGui::PopID();

            if(ImGui::Button("Resize")) {
                  int new_w = atoi(w_input);//converts the input to integer
                  int new_h = atoi(h_input);//converts the input to integer
                  new_w = new_w == 0 ? b.width : new_w; //if new_w is zero, then save original width to new_w, if not zero then new_w stays same (fail safe)
                  new_h = new_h == 0 ? b.height : new_h;//if new_h is zero, then save original height to new_w, if not zero then new_h stays same (fail safe)
                  resize_image(&b, new_w, new_h);//sends image b to be resized with new_w and new_h
              }
              ImGui::SameLine();
          }

          // select image b
          if (ImGui::Button("Image Insert"))
              ImGui::OpenPopup("select 1");
          std::string tmp = image_select(1);
          if (tmp != "") {
              fnames[1] = tmp;
              reset_image(&b); //refreshes b
              reset_image(&r); //refreshes r
              b.pixels = stbi_load(fnames[1].c_str(), &b.width, &b.height, &b.n, RGBA); //loads in image insert
              assert(b.pixels != NULL); //check to make sure no null characters where read in
              sprintf(strw, "%d px", b.width); //displayes width
              sprintf(strh, "%d px", b.height); //displayes height
              texture_image(&b);
            }
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
