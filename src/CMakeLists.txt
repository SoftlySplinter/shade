cmake_minimum_required(VERSION 2.6)
project(Shade)


set (SHADE_VERSION_MAJOR 0)
set (SHADE_VERSION_MINOR 1)



# set  header file to pass some of the CMake settings
# to the source code
configure_file (
  "${PROJECT_SOURCE_DIR}/shade.h.in"
  "${PROJECT_BINARY_DIR}/shade.h"
)
 
# add the binary tree to the search path for include files
# so that we will find TutorialConfig.h
include_directories("${PROJECT_BINARY_DIR}")

set(
   SOURCES
   ${PROJECT_SOURCE_DIR}/shade.c
   ${PROJECT_SOURCE_DIR}/gui/gui.c
   ${PROJECT_SOURCE_DIR}/gui/player.c
   ${PROJECT_SOURCE_DIR}/gui/map.c
   ${PROJECT_SOURCE_DIR}/model/model.c
   ${PROJECT_SOURCE_DIR}/model/player.c
)

Find_Package ( SDL REQUIRED )
Find_Package ( SDL_image REQUIRED )

# Workaround for the non-working REQUIRED flag
if ( NOT SDL_FOUND )
   message ( FATAL_ERROR "SDL not found!" )
endif ( NOT SDL_FOUND )

link_libraries (
   ${SDL_LIBRARY}
   ${SDLIMAGE_LIBRARY} # if using SDL_image, obviously
   SDLmain # Sadly not included in SDL_LIBRARY variable
)

add_executable (
   Shade
   WIN32 # Only if you don't want the DOS prompt to appear in the background in Windows
   MACOSX_BUNDLE
   ${SOURCES} # We could've listed the source files here directly instead of using a variable to store them
)
