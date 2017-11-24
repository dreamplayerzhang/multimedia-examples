LIBDIR = C:/libraries/lib
LIB = -L $(LIBDIR) -lOpenGL32 -lglfw3 -lglew32 -lm

DLL = $(LIBDIR)/libglew32.dll.a $(LIBDIR)/libglfw3dll.a

INC = C:/libraries/include
IMG = $(INC)/imgui/imgui.cpp $(INC)/imgui/imgui_draw.cpp $(INC)/imgui/imgui_demo.cpp

all:
	g++ main.cpp imgui_impl_glfw_gl3.cpp $(IMG) -I $(INC) $(DLL) $(LIB) -o demo

debug:
	g++ main.cpp $(DLL) $(INC) $(LIB) -o demo
