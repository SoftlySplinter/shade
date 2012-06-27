#ifndef PROTO_MODEL
#define PROTO_MODEL

/*!
 * \brief The model.
 * Whatever it looks like
 */
typedef struct _model {
	int x;
	int y;
} model;

model *model_get_reading();

#endif
