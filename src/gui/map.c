#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <SDL/SDL.h>

#include "./map.h"

void render_map(SDL_Surface* surface) {
	SDL_Surface *image = IMG_Load(TILE);
	if(image == NULL) {
		//XXX print
		return;
	}

	if(image->format->palette && surface->format->palette) {
		SDL_SetColors(surface, image->format->palette->colors, 0, image->format->palette->ncolors);
	}

	int x_tiles = (int) ceil((double) surface->w / (double) image->w);
	int y_tiles = (int) ceil((double) surface->h / (double) image->h);

	SDL_Rect dest;
	dest.w = image->w;
	dest.h = image->h;

	int x,y;
	for(x = 0; x < x_tiles; x++) {
		for(y = 0; y < y_tiles; y++) {
			dest.x = x * image->w;
			dest.y = y * image->h;

			if(SDL_BlitSurface(image, NULL, surface, &dest) < 0) {
				//XXX print
			}
		}
	}

	SDL_UpdateRect(surface, 0, 0, surface->w, surface->h);
	SDL_FreeSurface(image);
}
