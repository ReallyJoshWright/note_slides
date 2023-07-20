CXX = g++
CXXFLAGS = -std=c++20 -g -Wall
INCPATH = -I. -I./include
LIBS = -lncurses

SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)
TARGET = nslides

$(TARGET): $(OBJECTS)
	$(CXX) $^ $(LIBS) -o $@
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCPATH) -c $< -o $@
.PHONY: clean
clean:
	rm -f $(TARGET) $(OBJECTS)
