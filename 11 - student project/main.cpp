// ImGui headers
#include <image.h>
#include <imgui/local.h>

#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

#define MAX_SIDE_SIZE 500

int main(){

Image a;
 // Setup window
glfwSetErrorCallback(error_callback);
if (!glfwInit())
return 1;

// OpenGl version 3
glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

// Create Window and init glew
GLFWwindow* window = glfwCreateWindow(1000, 700, "Project 1", NULL, NULL);
glfwMakeContextCurrent(window);

glewInit();

// Setup ImGui binding
ImGui_ImplGlfwGL3_Init(window, true);

ImVec4 clear_color = ImColor(244, 191, 66);

while (!glfwWindowShouldClose(window))
{
	glfwPollEvents();
	ImGui_ImplGlfwGL3_NewFrame();

	ImGui::SetNextWindowSize(ImVec2(1000, 700), ImGuiSetCond_FirstUseEver);
	ImGui::Begin("Winnie The Pooh");

	// Image A
	ImGui::BeginGroup();

	if (a.texture_loaded)
		ImGui::Image((void*)a.texture, resize_ui(a.width, a.height, MAX_SIDE_SIZE));
		
	if (ImGui::Button("Start!")) {
		a.pixels = stbi_load("pooh1.jpg", &a.width, &a.height, &a.n, RGBA);
		texture_image(&a);
	}
	ImGui::SameLine();
	if (ImGui::Button("Process!")) {
		bool inBlue = true;
		int count = 0;
		int bytesPerPixel = 4;
		int bytesPerRow = a.width * bytesPerPixel;

		for (int row = 0; row < a.height; row += 1) { //inicialize a loop to pass through all the rows one by one
			
			if (count == 19) { //check if the counter of the rows is 20 and if so change the first color of the next 200 rows with the opposite 
				count = 0;
				inBlue = !inBlue;
			}
			for (int col = 0; col < a.width; col += 20) {//inicialize a loop to pass through all the columns and change every 20 columns
				
				if (inBlue) {
					inBlue = false;
					for (int i = 0; i < 20; i++) {// pass through each 20 pixels in each row - pass 20 columns
						//if the color is white - background - change it to blue in this section of the code
						if (a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] > 240 && // R 
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 1 + i * bytesPerPixel)] > 240 && // G
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)] > 240) {// B

							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] = 113; // R
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 1 + i * bytesPerPixel)] = 250; // G
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)] = 252; // B
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 3 + i * bytesPerPixel)] = 255; // A

						}
						else {
							//if the color is not white - check if it is the T-shirt of Winnie the pooh - if it is red 
							//change it only if it is in the center
							if (row>a.height / 3 && row<2.2 * a.height / 3 && row>a.width / 3 && row<2.4 * a.width / 3) {
								if (a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] > 120 &&
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + 1 + i * bytesPerPixel] < 100 &&
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + 2 + i * bytesPerPixel] < 100) {
									//exchange the value of the red and the blue components for each pixel
									//save the shadows but still change the color
									int aux = a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * 4];
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] = a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)]; // R
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)] =aux; //B
								}
							}
						}

					}
				}
				
				//change the color to purple
				else {

					inBlue = true;
					for (int i = 0; i < 20; i++) {
							// pass through each 20 pixels in each row - pass 20 columns
							//if the color is white - background - change it to purple in this section of the code
						if (a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] > 240 && // R 
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 1 + i * bytesPerPixel)] > 240 && // G
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)] > 240) {// B

							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] = 252; // R
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 1 + i * bytesPerPixel)] = 113; // G
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)] = 252; // B
							a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 3) + i * bytesPerPixel] = 255; // A
						}
						else {
							//if the color is not white - check if it is the T-shirt of Winnie the pooh - if it is red 
							//change it only if it is in the center
							if(row>a.height/3 && row<2.2*a.height / 3 && row>a.width / 3 && row<(2 * a.width)/ 3){
								if (a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] > 120 &&
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + 1 + i * bytesPerPixel] < 100 &&
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + 2 + i * bytesPerPixel] < 100 ) {
									//exchange the value of the red and the blue components for each pixel
									//save the shadows but still change the color
									int aux = a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel];
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel)) + i * bytesPerPixel] = a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)]; // R
									a.pixels[((row)* bytesPerRow + (col * bytesPerPixel) + 2 + i * bytesPerPixel)] = aux; // B
								}
							}
						}
					}
				}
			}
			count++;
		}
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


	} //end of while

    // Cleanup
    ImGui_ImplGlfwGL3_Shutdown();
    glfwTerminate();

    return 0;
} //end of main
