# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/softly/game/shade/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/softly/game/shade

# Include any dependencies generated for this target.
include CMakeFiles/Shade.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Shade.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Shade.dir/flags.make

CMakeFiles/Shade.dir/shade.c.o: CMakeFiles/Shade.dir/flags.make
CMakeFiles/Shade.dir/shade.c.o: src/shade.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/softly/game/shade/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/Shade.dir/shade.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Shade.dir/shade.c.o   -c /home/softly/game/shade/src/shade.c

CMakeFiles/Shade.dir/shade.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Shade.dir/shade.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/softly/game/shade/src/shade.c > CMakeFiles/Shade.dir/shade.c.i

CMakeFiles/Shade.dir/shade.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Shade.dir/shade.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/softly/game/shade/src/shade.c -o CMakeFiles/Shade.dir/shade.c.s

CMakeFiles/Shade.dir/shade.c.o.requires:
.PHONY : CMakeFiles/Shade.dir/shade.c.o.requires

CMakeFiles/Shade.dir/shade.c.o.provides: CMakeFiles/Shade.dir/shade.c.o.requires
	$(MAKE) -f CMakeFiles/Shade.dir/build.make CMakeFiles/Shade.dir/shade.c.o.provides.build
.PHONY : CMakeFiles/Shade.dir/shade.c.o.provides

CMakeFiles/Shade.dir/shade.c.o.provides.build: CMakeFiles/Shade.dir/shade.c.o

CMakeFiles/Shade.dir/gui/gui.c.o: CMakeFiles/Shade.dir/flags.make
CMakeFiles/Shade.dir/gui/gui.c.o: src/gui/gui.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/softly/game/shade/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/Shade.dir/gui/gui.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Shade.dir/gui/gui.c.o   -c /home/softly/game/shade/src/gui/gui.c

CMakeFiles/Shade.dir/gui/gui.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Shade.dir/gui/gui.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/softly/game/shade/src/gui/gui.c > CMakeFiles/Shade.dir/gui/gui.c.i

CMakeFiles/Shade.dir/gui/gui.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Shade.dir/gui/gui.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/softly/game/shade/src/gui/gui.c -o CMakeFiles/Shade.dir/gui/gui.c.s

CMakeFiles/Shade.dir/gui/gui.c.o.requires:
.PHONY : CMakeFiles/Shade.dir/gui/gui.c.o.requires

CMakeFiles/Shade.dir/gui/gui.c.o.provides: CMakeFiles/Shade.dir/gui/gui.c.o.requires
	$(MAKE) -f CMakeFiles/Shade.dir/build.make CMakeFiles/Shade.dir/gui/gui.c.o.provides.build
.PHONY : CMakeFiles/Shade.dir/gui/gui.c.o.provides

CMakeFiles/Shade.dir/gui/gui.c.o.provides.build: CMakeFiles/Shade.dir/gui/gui.c.o

CMakeFiles/Shade.dir/gui/player.c.o: CMakeFiles/Shade.dir/flags.make
CMakeFiles/Shade.dir/gui/player.c.o: src/gui/player.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/softly/game/shade/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/Shade.dir/gui/player.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Shade.dir/gui/player.c.o   -c /home/softly/game/shade/src/gui/player.c

CMakeFiles/Shade.dir/gui/player.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Shade.dir/gui/player.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/softly/game/shade/src/gui/player.c > CMakeFiles/Shade.dir/gui/player.c.i

CMakeFiles/Shade.dir/gui/player.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Shade.dir/gui/player.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/softly/game/shade/src/gui/player.c -o CMakeFiles/Shade.dir/gui/player.c.s

CMakeFiles/Shade.dir/gui/player.c.o.requires:
.PHONY : CMakeFiles/Shade.dir/gui/player.c.o.requires

CMakeFiles/Shade.dir/gui/player.c.o.provides: CMakeFiles/Shade.dir/gui/player.c.o.requires
	$(MAKE) -f CMakeFiles/Shade.dir/build.make CMakeFiles/Shade.dir/gui/player.c.o.provides.build
.PHONY : CMakeFiles/Shade.dir/gui/player.c.o.provides

CMakeFiles/Shade.dir/gui/player.c.o.provides.build: CMakeFiles/Shade.dir/gui/player.c.o

CMakeFiles/Shade.dir/gui/map.c.o: CMakeFiles/Shade.dir/flags.make
CMakeFiles/Shade.dir/gui/map.c.o: src/gui/map.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/softly/game/shade/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/Shade.dir/gui/map.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Shade.dir/gui/map.c.o   -c /home/softly/game/shade/src/gui/map.c

CMakeFiles/Shade.dir/gui/map.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Shade.dir/gui/map.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/softly/game/shade/src/gui/map.c > CMakeFiles/Shade.dir/gui/map.c.i

CMakeFiles/Shade.dir/gui/map.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Shade.dir/gui/map.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/softly/game/shade/src/gui/map.c -o CMakeFiles/Shade.dir/gui/map.c.s

CMakeFiles/Shade.dir/gui/map.c.o.requires:
.PHONY : CMakeFiles/Shade.dir/gui/map.c.o.requires

CMakeFiles/Shade.dir/gui/map.c.o.provides: CMakeFiles/Shade.dir/gui/map.c.o.requires
	$(MAKE) -f CMakeFiles/Shade.dir/build.make CMakeFiles/Shade.dir/gui/map.c.o.provides.build
.PHONY : CMakeFiles/Shade.dir/gui/map.c.o.provides

CMakeFiles/Shade.dir/gui/map.c.o.provides.build: CMakeFiles/Shade.dir/gui/map.c.o

CMakeFiles/Shade.dir/model/model.c.o: CMakeFiles/Shade.dir/flags.make
CMakeFiles/Shade.dir/model/model.c.o: src/model/model.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/softly/game/shade/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/Shade.dir/model/model.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Shade.dir/model/model.c.o   -c /home/softly/game/shade/src/model/model.c

CMakeFiles/Shade.dir/model/model.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Shade.dir/model/model.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/softly/game/shade/src/model/model.c > CMakeFiles/Shade.dir/model/model.c.i

CMakeFiles/Shade.dir/model/model.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Shade.dir/model/model.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/softly/game/shade/src/model/model.c -o CMakeFiles/Shade.dir/model/model.c.s

CMakeFiles/Shade.dir/model/model.c.o.requires:
.PHONY : CMakeFiles/Shade.dir/model/model.c.o.requires

CMakeFiles/Shade.dir/model/model.c.o.provides: CMakeFiles/Shade.dir/model/model.c.o.requires
	$(MAKE) -f CMakeFiles/Shade.dir/build.make CMakeFiles/Shade.dir/model/model.c.o.provides.build
.PHONY : CMakeFiles/Shade.dir/model/model.c.o.provides

CMakeFiles/Shade.dir/model/model.c.o.provides.build: CMakeFiles/Shade.dir/model/model.c.o

CMakeFiles/Shade.dir/model/player.c.o: CMakeFiles/Shade.dir/flags.make
CMakeFiles/Shade.dir/model/player.c.o: src/model/player.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/softly/game/shade/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/Shade.dir/model/player.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/Shade.dir/model/player.c.o   -c /home/softly/game/shade/src/model/player.c

CMakeFiles/Shade.dir/model/player.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Shade.dir/model/player.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/softly/game/shade/src/model/player.c > CMakeFiles/Shade.dir/model/player.c.i

CMakeFiles/Shade.dir/model/player.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Shade.dir/model/player.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/softly/game/shade/src/model/player.c -o CMakeFiles/Shade.dir/model/player.c.s

CMakeFiles/Shade.dir/model/player.c.o.requires:
.PHONY : CMakeFiles/Shade.dir/model/player.c.o.requires

CMakeFiles/Shade.dir/model/player.c.o.provides: CMakeFiles/Shade.dir/model/player.c.o.requires
	$(MAKE) -f CMakeFiles/Shade.dir/build.make CMakeFiles/Shade.dir/model/player.c.o.provides.build
.PHONY : CMakeFiles/Shade.dir/model/player.c.o.provides

CMakeFiles/Shade.dir/model/player.c.o.provides.build: CMakeFiles/Shade.dir/model/player.c.o

# Object files for target Shade
Shade_OBJECTS = \
"CMakeFiles/Shade.dir/shade.c.o" \
"CMakeFiles/Shade.dir/gui/gui.c.o" \
"CMakeFiles/Shade.dir/gui/player.c.o" \
"CMakeFiles/Shade.dir/gui/map.c.o" \
"CMakeFiles/Shade.dir/model/model.c.o" \
"CMakeFiles/Shade.dir/model/player.c.o"

# External object files for target Shade
Shade_EXTERNAL_OBJECTS =

Shade: CMakeFiles/Shade.dir/shade.c.o
Shade: CMakeFiles/Shade.dir/gui/gui.c.o
Shade: CMakeFiles/Shade.dir/gui/player.c.o
Shade: CMakeFiles/Shade.dir/gui/map.c.o
Shade: CMakeFiles/Shade.dir/model/model.c.o
Shade: CMakeFiles/Shade.dir/model/player.c.o
Shade: /usr/local/lib/libSDLmain.a
Shade: /usr/local/lib/libSDL.so
Shade: /usr/lib/i386-linux-gnu/libSDL_image.so
Shade: CMakeFiles/Shade.dir/build.make
Shade: CMakeFiles/Shade.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable Shade"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Shade.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Shade.dir/build: Shade
.PHONY : CMakeFiles/Shade.dir/build

CMakeFiles/Shade.dir/requires: CMakeFiles/Shade.dir/shade.c.o.requires
CMakeFiles/Shade.dir/requires: CMakeFiles/Shade.dir/gui/gui.c.o.requires
CMakeFiles/Shade.dir/requires: CMakeFiles/Shade.dir/gui/player.c.o.requires
CMakeFiles/Shade.dir/requires: CMakeFiles/Shade.dir/gui/map.c.o.requires
CMakeFiles/Shade.dir/requires: CMakeFiles/Shade.dir/model/model.c.o.requires
CMakeFiles/Shade.dir/requires: CMakeFiles/Shade.dir/model/player.c.o.requires
.PHONY : CMakeFiles/Shade.dir/requires

CMakeFiles/Shade.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Shade.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Shade.dir/clean

CMakeFiles/Shade.dir/depend:
	cd /home/softly/game/shade && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/softly/game/shade/src /home/softly/game/shade/src /home/softly/game/shade /home/softly/game/shade /home/softly/game/shade/CMakeFiles/Shade.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Shade.dir/depend

