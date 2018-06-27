INC=-I C:/libraries/include/ -I C:/libraries/include/stb
all:
	g++ -O3 -std=c++11 main.cpp $(INC) -o huff
test:
	 make && ./demo.exe && gprof demo.exe gmon.out > analysis.txt
# diff -a --suppress-common-lines -y pack.png wtf.png
