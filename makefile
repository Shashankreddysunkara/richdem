compile: main.cpp
	mpic++ -o parallel_flowdirs.exe -O3 `gdal-config --cflags` `gdal-config --libs` main.cpp -lgdal --std=c++11 -Wall -lboost_mpi -lboost_serialization

debug: main.cpp
	mpic++ -o parallel_flowdirs.exe -g `gdal-config --cflags` `gdal-config --libs` main.cpp -lgdal --std=c++11 -Wall -lboost_mpi -lboost_serialization
	#To run with debuggers: mpirun -n 3 xterm -hold  -e gdb --args ./parallel_flowdirs.exe tests/testdem1.d8