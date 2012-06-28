#ifndef SHADE_MOD_PLAYER
#define SHADE_MOD_PLAYER

#include<stdbool.h>

typedef struct _player {
	unsigned int x;
	unsigned int y;

	unsigned short move_speed;
	
	bool crouch;

	unsigned int rods;
	double blanched;

	unsigned int cones;
} player;

void move_left();
void move_right();
void move_up();
void move_down();
void switch_crouch();

player * get_player();


#endif
