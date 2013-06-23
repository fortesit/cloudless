default:cloudless

cloudless:cloudless.cpp
	g++ cloudless.cpp -o cloudless -I/usr/local/include `pkg-config opencv --cflags --libs`
fixpath:
	sudo ldconfig -v
	echo "export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH"
