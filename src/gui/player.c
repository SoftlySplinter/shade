#include<stdlib.h>
#include<SDL/SDL.h>

#include "player.h"

void render_player(SDL_Surface* surface) {
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

	SDL_Rect dest;
	dest.x = get_player()->x;
	dest.y = get_player()->y;
	dest.w = image->w;
	dest.h = image->h;


	if(SDL_BlitSurface(image,NULL, surface, &dest) < 0) {
		fprintf(stderr, "%s\n", SDL_GetError());
	}

	SDL_UpdateRect(surface, dest.x,dest.y,dest.w, dest.h);
	SDL_FreeSurface(image);

} 

