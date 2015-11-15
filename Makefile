all:

compile: compSeq compParal compTest

compSeq:
	cd ./sequential;\
	 rm -f CMakeCache.txt;\
	 rm -f CMakeFiles;\
	 rm -f cmake_install.cmake;\
	 rm -f DisplayImage;\
	 rm -f Makefile;\
	 cmake .;\
	 make
	
compParal:
	cd parallel;\
	 mpic++  parallel.cpp -g  -o parallel `pkg-config --libs opencv` -fopenmp

compTest:
	g++ -g TestAndAnalyze.cpp -o testAndAnalyse
	