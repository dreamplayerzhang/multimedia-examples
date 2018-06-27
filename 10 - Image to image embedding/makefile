LIBDIR = C:/libraries/lib
LIB = -L $(LIBDIR) -lOpenGL32 -lglfw3 -lglew32 -lm
DLL = $(LIBDIR)/libglew32.dll.a $(LIBDIR)/libglfw3dll.a

INC = C:/libraries/include
IMGUI = $(INC)/imgui/imgui.cpp $(INC)/imgui/imgui_draw.cpp $(INC)/imgui/imgui_demo.cpp

OPT = -O3

all:
	g++ $(OPT) -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB) -o img.exe

profile:
	g++ -pg $(OPT) -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB) -o img
	./img.exe && gprof img.exe gmon.out > analysis.txt

asm:
	g++ -S $(OPT) -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB)
