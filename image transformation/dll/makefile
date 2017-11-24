INC = C:/libraries/include

all:
	g++ -O3 -c -I $(INC) -DBUILDING_DLL image_transform.cpp
	g++ -shared -o image_transform.dll image_transform.o
# -Wl,--out-implib,image_transform.dll.a

clean:
	rm *.dll || rm *.dll.a ||	rm *.o
