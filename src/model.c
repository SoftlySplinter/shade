#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#include "model.h"

model *model_get_reading() {
	model *model = malloc(sizeof(model));
	int time;
	time = clock();
	model->x = time;
	model->y = time;
	return model;
}
