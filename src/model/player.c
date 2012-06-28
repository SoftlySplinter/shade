#include<stdlib.h>
#include<stdio.h>
#include<limits.h>

#include "./player.h"

player _player;

void move_left() {
	if(_player.x > 0) {
		_player.x -= _player.move_speed;
	} else {
		fprintf(stderr, "Unable to move player into negatives\n");
	}
}

void move_right() {
	if(_player.x < UINT_MAX) {
		_player.x += _player.move_speed;
	} else {
		fprintf(stderr, "Unable to move player past %d\n", UINT_MAX);
	}
}

void move_up() {
	if(_player.y > 0) {
		_player.y -= _player.move_speed;
	} else {
		fprintf(stderr, "Unable to move player into negatives\n");
	}
}

void move_down() {
	if(_player.y < UINT_MAX) {
		_player.y += _player.move_speed;
	} else {
		fprintf(stderr, "Unable to move player past %d\n", UINT_MAX);
	}
}

void switch_crouch() {
	_player.crouch = !_player.crouch;

	if(_player.crouch) {
		_player.move_speed = 1;
	} else {
		_player.move_speed = 4;
	}
}

player *get_player() {
	if(!_player.move_speed) {
		_player.move_speed = 4;
	}
	return &_player;
}
