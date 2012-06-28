#include<stdlib.h>
#include<stdio.h>
#include<SDL/SDL.h>

#include "shade.h"
#include "gui/gui.h"

int main(int argc, char** argv) {
	printf("Shade v%d.%d\n", SHADE_VERSION_MAJOR, SHADE_VERSION_MINOR);
	run_gui(argc, argv);
}
