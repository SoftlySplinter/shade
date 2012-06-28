#include<stdlib.h>
#include<stdio.h>
#include<ctype.h>
#include<unistd.h>
#include<stdbool.h>
#include<SDL/SDL.h>

#include "./gui.h"
#include "./player.h"
#include "./map.h"
#include "../model/player.h"

/*! \brief 1 if the GUI is running */
int running = 0;

int fullscreen = 0;

bool right_down = 0;
bool left_down = 0;
bool up_down = 0;
bool down_down = 0;

/*! \brief The Screen Width */
int width = DEFUALT_WIDTH; 

/*! \brief The screen height */
int height = DEFAULT_HEIGHT;

void handle_keydown(SDL_KeyboardEvent *key_event) {
	switch(key_event->keysym.sym) {
		case SDLK_ESCAPE:
			stop_gui();
			break;
		case SDLK_LEFT:
		case SDLK_a:
			left_down = true;
			break;
		case SDLK_RIGHT:
		case SDLK_d:
			right_down = true;
			break;
		case SDLK_w:
		case SDLK_UP:
			up_down = true;
			break;
		case SDLK_s:
		case SDLK_DOWN:
			down_down = true;
			break;
		case SDLK_LSHIFT:
			switch_crouch();
	}
}

void handle_keyup(SDL_KeyboardEvent *key_event) {
	switch(key_event->keysym.sym) {
                case SDLK_LEFT:
		case SDLK_a:
                        left_down = false;
                        break;
		case SDLK_d:
                case SDLK_RIGHT:
                        right_down = false;
                        break;
		case SDLK_w:
		case SDLK_UP:
			up_down = false;
			break;
		case SDLK_s:
		case SDLK_DOWN:
			down_down = false;
			break;
		case SDLK_LSHIFT:
			switch_crouch();
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
			break;
		case SDL_KEYUP:
			handle_keyup(&event->key);
			break;
	}
}

/*! 
 * \brief Perform a single render of the screen.
 */
void render(SDL_Surface *surface) {
	render_map(surface);
	render_player(surface);
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

		if(right_down && left_down) {
			;
		} else if(right_down) {
			move_right();
		} else if(left_down) {
			move_left();
		}

		if(down_down && up_down) {
			;
		} else if(down_down) {
			move_down();
		} else if(up_down) {
			move_up();
		}

		render(surface);
		SDL_Delay(60);
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
