LIBDIR = C:/libraries/lib
LIB = -L $(LIBDIR) -lOpenGL32
DLL = $(LIBDIR)/libglew32.dll.a $(LIBDIR)/libglfw3dll.a

INC = C:/libraries/include
IMGUI = $(INC)/imgui/imgui.cpp $(INC)/imgui/imgui_draw.cpp

OPT = -O0
OUT = demo

all:
	g++ $(OPT) -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB) -o $(OUT)

profile:
	g++ $(OPT) -pg -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB) -o $(OUT)
	./hist.exe && gprof hist.exe gmon.out > analysis.txt

asm:
	g++ -S $(OPT) -std=c++11 main.cpp $(IMGUI) -I $(INC) $(DLL) $(LIB)
