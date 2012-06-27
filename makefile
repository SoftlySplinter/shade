CC=clang
CFLAGS= -c -Wall `sdl-config --cflags --libs`
LDFLAGS= -lSDL -lSDL_image

SRC=src/
DIST=bin/

SOURCES=$(SRC)shade.c ${SRC}gui.c ${SRC}model.c

OBJECTS=$(SOURCES:$(SRC).cpp=$(DIST).o)

EXECUTABLE=shade

all: compile

compile: $(SOURCES) $(EXECUTABLE)
	echo Compiling Shade.

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(DIST)
