LIBDIR = C:/libraries/lib
LIB = -L $(LIBDIR) -lOpenGL32
DLL = $(LIBDIR)/libglew32.dll.a $(LIBDIR)/libglfw3dll.a

INC = C:/libraries/include
IMGUI = $(INC)/imgui/imgui.cpp $(INC)/imgui/imgui_draw.cpp

OPT = -O0

all:
	g++ $(OPT) -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB) -o demo

profile:
	g++ $(OPT) -pg -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB) -o demo
	./demo.exe && gprof demo.exe gmon.out > analysis.txt

asm:
	g++ -S $(OPT) -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB)
