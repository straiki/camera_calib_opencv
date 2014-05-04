CXX       = g++
CXXFLAGS  = -Wall -g

CXXFLAGS += `pkg-config --cflags opencv`
LDFLAGS  += `pkg-config --libs opencv`

SOURCES   = main.cpp
OBJECTS   = $(SOURCES:.cpp=.o)

EXE       = camera_calib


all: $(SOURCES) $(EXE)

clean: 
	rm -f $(EXE) *.o

$(EXE): $(OBJECTS)
	$(CXX) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CXX) $(CXXFLAGS) $< -o $@
