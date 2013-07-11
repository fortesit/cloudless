default:cloudless

cloudless:cloudless.cpp
	g++ cloudless.cpp -o cloudless -I/usr/local/include \
		`pkg-config opencv --cflags --libs` \
		-fopenmp -lgomp
	export OMP_NUM_THREADS=2
charlie:cloudless.cpp
	g++ cloudless.cpp -o charlie -I/usr/local/include \
		`pkg-config opencv --cflags --libs` \
		-fopenmp -lgomp -DORIGINAL
	export OMP_NUM_THREADS=2
tiff:tiff.cpp
	g++ tiff.cpp -o tiff -I/usr/local/include \
		`pkg-config opencv --cflags --libs`
fixpath:
	sudo ldconfig -v
	echo "export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH"
