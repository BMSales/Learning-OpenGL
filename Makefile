CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl

VulkanTest: main.cpp
	g++ $(CFLAGS) -o test main.cpp $(LDFLAGS)

.PHONY: test clean

test: test
	./test

clean:
	rm -f test
