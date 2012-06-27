#include<stdlib.h>
#include<stdio.h>
#include<ctype.h>
#include<unistd.h>
#include<SDL/SDL.h>
//#include<SDL/SDL_Image.h>

#include "gui.h"
#include "model.h"

/*! \brief 1 if the GUI is running */
int running = 0;

int fullscreen = 0;

/*! \brief The Screen Width */
int width = DEFUALT_WIDTH; 

/*! \brief The screen height */
int height = DEFAULT_HEIGHT;

void handle_keydown(SDL_KeyboardEvent *key_event) {
	
	if(key_event->keysym.sym == SDLK_ESCAPE) {
		stop_gui();
	}
}

/*!
 * \brief Handles SDL Events.
 * \param event The SDL Event to handle
 */
void on_event(SDL_Event *event) {
	switch(event->type) {
		case SDL_QUIT:
			stop_gui();
			break;
		case SDL_KEYDOWN:
			handle_keydown(&event->key);
	}
}

/*
 * Set the pixel at (x, y) to the given value
 * NOTE: The surface must be locked before calling this!
 */
void putpixel(SDL_Surface *surface, int x, int y, Uint32 pixel)
{
    int bpp = surface->format->BytesPerPixel;
    /* Here p is the address to the pixel we want to set */
    Uint8 *p = (Uint8 *)surface->pixels + y * surface->pitch + x * bpp;

    switch (bpp) {
    case 1:
        *p = pixel;
        break;

    case 2:
        *(Uint16 *)p = pixel;
        break;

    case 3:
        if (SDL_BYTEORDER == SDL_BIG_ENDIAN) {
            p[0] = (pixel >> 16) & 0xff;
            p[1] = (pixel >> 8) & 0xff;
            p[2] = pixel & 0xff;
        }
        else {
            p[0] = pixel & 0xff;
            p[1] = (pixel >> 8) & 0xff;
            p[2] = (pixel >> 16) & 0xff;
        }
        break;

    case 4:
        *(Uint32 *)p = pixel;
        break;

   default:
	fprintf(stdout, "Something went wrong\n");
        break;           /* shouldn't happen, but avoids warnings */
    } // switch
}

/*! 
 * \brief Perform a single render of the screen.
 */
void render(SDL_Surface *surface) {
	model* cur_model = model_get_reading();

	SDL_Surface *image = IMG_Load("img/character1.png");
	if(image == NULL) {
		fprintf(stderr, "Unable to load image - reason: %s\n", SDL_GetError());
		return;
	}

	/*
	 * Palettized screen modes will have a default palette (a standard
	 * 8*8*4 colour cube), but if the image is palettized as well we can
	 * use that palette for a nicer colour matching
	 */
	if (image->format->palette && surface->format->palette) {
		SDL_SetColors(surface, image->format->palette->colors, 0, image->format->palette->ncolors);
	}

	if(SDL_BlitSurface(image,NULL, surface,NULL) < 0) {
		fprintf(stderr, "%s\n", SDL_GetError());
	}

	SDL_UpdateRect(surface, 0,0,image->w, image->h);
	SDL_FreeSurface(image);
}

/*!
 * \brief Start looping on the GUI.
 */
void start_loop(SDL_Surface* surface) {
	// Set-up variables
	SDL_Event event;
	running = 1;

	// Loop whilst running.
	while(running) {
		// Poll and handle events.
		while(SDL_PollEvent(&event)) {
			on_event(&event);
		}
		render(surface);
	}
	SDL_FreeSurface(surface);
}

int start_gui() {
	// Set-up variable for the surface.
	SDL_Surface* surface;

	// Return value
	int ret = 0;

	// Initialise SDL.
	ret = SDL_Init(SDL_INIT_EVERYTHING);
	SDL_EnableUNICODE(1);

	// Return if the operation failed.
	if( ret == -1 ) {
		fprintf(stderr, "Unable to initialise SDL: %s\n", SDL_GetError());
		return ret;
	}

	if(fullscreen) {
		SDL_VideoInfo* info = SDL_GetVideoInfo();
		width = info->current_w;
		height = info->current_h;
	}

	// Get the surface.
	surface = SDL_SetVideoMode(width, height, 32, SDL_HWSURFACE | SDL_DOUBLEBUF); 

	// Return if the surface didn't create.
	if(surface == NULL) {
		fprintf(stderr, "Unable to create SDL Surgace.\n");
		return -1;
	}

	// Start the loop.
	// TODO Threading here.
	start_loop(surface);

	// Return success.
	return 1;
}

int stop_gui() {
	running = 0;
	return 1;
}

/*!
 * \brief Parse the command line arguments.
 *
 * \param argc The argument count.
 * \param argv The argument values.
 * \return 0 if the operation was successful.
 */
int parse_args(int argc, char** argv) {
	opterr = 0;
	int c = 0;
	while((c=getopt(argc, argv, "w:h:fW:")) != -1) {
		switch(c) {
			case 'w':
				width = atoi(optarg);
				break;
			case 'h':
				height = atoi(optarg);
				break;
			case 'f':
				fullscreen = 1;
				break;
			case 'W':
				if(strcmp(optarg,"--fullscreen")) {
					fullscreen = 1;
				} else {
					fprintf(stderr, "Unrecognised option '%s'\n", optarg);
				}
				break;
			case '?':
				if(optopt == 'w' || optopt == 'h') {
					fprintf(stderr, "Option -%c requires an option.\n", optopt);
				} else if(isprint(optopt)) {
					fprintf(stderr, "Option -%c not recognised.\n", optopt);
				} else {
					fprintf(stderr, "Unknown option character `\\x%x'.\n", optopt);
				}
				return 2;
			default:
				return 2;
		}
	}

	return 0;
}

/*!
 * \brief Main method.
 * \param argc The argument count.
 * \param argv The argument values.
 * \return 0 if successful.
 */
int run_gui(int argc, char **argv) {
	int args = parse_args(argc, argv);

	if( args != 0 ) {
		return args;
	}

	int gui = start_gui();
	if( !gui ) {
		printf("Error starting GUI\n");
		return gui;
	}

	return EXIT_SUCCESS;
}
