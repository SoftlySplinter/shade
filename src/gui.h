#ifndef PROTO_GUI
#define PROTO_GUI

/*!
 * \brief The default width of the screen.
 */

#define DEFUALT_WIDTH 640

/*!
 * \brief The default height of the screen.
 */
#define DEFAULT_HEIGHT 480

/*!
 * \brief Start the GUI
 * 
 * \return 1 if the operation was successful.
 */
int start_gui();

/*!
 * \brief Stop the GUI.
 *
 * \return 1 if the operation was successful.
 */
int stop_gui();

int run_gui(int argc, char** argv);

#endif
