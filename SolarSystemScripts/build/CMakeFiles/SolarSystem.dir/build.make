# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build

# Include any dependencies generated for this target.
include CMakeFiles/SolarSystem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SolarSystem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SolarSystem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SolarSystem.dir/flags.make

CMakeFiles/SolarSystem.dir/main.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/main.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/main.cpp
CMakeFiles/SolarSystem.dir/main.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SolarSystem.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/main.cpp.o -MF CMakeFiles/SolarSystem.dir/main.cpp.o.d -o CMakeFiles/SolarSystem.dir/main.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/main.cpp

CMakeFiles/SolarSystem.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/main.cpp > CMakeFiles/SolarSystem.dir/main.cpp.i

CMakeFiles/SolarSystem.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/main.cpp -o CMakeFiles/SolarSystem.dir/main.cpp.s

CMakeFiles/SolarSystem.dir/camera.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/camera.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/camera.cpp
CMakeFiles/SolarSystem.dir/camera.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SolarSystem.dir/camera.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/camera.cpp.o -MF CMakeFiles/SolarSystem.dir/camera.cpp.o.d -o CMakeFiles/SolarSystem.dir/camera.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/camera.cpp

CMakeFiles/SolarSystem.dir/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/camera.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/camera.cpp > CMakeFiles/SolarSystem.dir/camera.cpp.i

CMakeFiles/SolarSystem.dir/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/camera.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/camera.cpp -o CMakeFiles/SolarSystem.dir/camera.cpp.s

CMakeFiles/SolarSystem.dir/stb_image.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/stb_image.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/stb_image.cpp
CMakeFiles/SolarSystem.dir/stb_image.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SolarSystem.dir/stb_image.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/stb_image.cpp.o -MF CMakeFiles/SolarSystem.dir/stb_image.cpp.o.d -o CMakeFiles/SolarSystem.dir/stb_image.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/stb_image.cpp

CMakeFiles/SolarSystem.dir/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/stb_image.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/stb_image.cpp > CMakeFiles/SolarSystem.dir/stb_image.cpp.i

CMakeFiles/SolarSystem.dir/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/stb_image.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/stb_image.cpp -o CMakeFiles/SolarSystem.dir/stb_image.cpp.s

CMakeFiles/SolarSystem.dir/renderer.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/renderer.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/renderer.cpp
CMakeFiles/SolarSystem.dir/renderer.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SolarSystem.dir/renderer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/renderer.cpp.o -MF CMakeFiles/SolarSystem.dir/renderer.cpp.o.d -o CMakeFiles/SolarSystem.dir/renderer.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/renderer.cpp

CMakeFiles/SolarSystem.dir/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/renderer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/renderer.cpp > CMakeFiles/SolarSystem.dir/renderer.cpp.i

CMakeFiles/SolarSystem.dir/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/renderer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/renderer.cpp -o CMakeFiles/SolarSystem.dir/renderer.cpp.s

CMakeFiles/SolarSystem.dir/vertexarray.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/vertexarray.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexarray.cpp
CMakeFiles/SolarSystem.dir/vertexarray.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SolarSystem.dir/vertexarray.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/vertexarray.cpp.o -MF CMakeFiles/SolarSystem.dir/vertexarray.cpp.o.d -o CMakeFiles/SolarSystem.dir/vertexarray.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexarray.cpp

CMakeFiles/SolarSystem.dir/vertexarray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/vertexarray.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexarray.cpp > CMakeFiles/SolarSystem.dir/vertexarray.cpp.i

CMakeFiles/SolarSystem.dir/vertexarray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/vertexarray.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexarray.cpp -o CMakeFiles/SolarSystem.dir/vertexarray.cpp.s

CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexbuffer.cpp
CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o -MF CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o.d -o CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexbuffer.cpp

CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexbuffer.cpp > CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.i

CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/vertexbuffer.cpp -o CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.s

CMakeFiles/SolarSystem.dir/shader.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/shader.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/shader.cpp
CMakeFiles/SolarSystem.dir/shader.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/SolarSystem.dir/shader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/shader.cpp.o -MF CMakeFiles/SolarSystem.dir/shader.cpp.o.d -o CMakeFiles/SolarSystem.dir/shader.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/shader.cpp

CMakeFiles/SolarSystem.dir/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/shader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/shader.cpp > CMakeFiles/SolarSystem.dir/shader.cpp.i

CMakeFiles/SolarSystem.dir/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/shader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/shader.cpp -o CMakeFiles/SolarSystem.dir/shader.cpp.s

CMakeFiles/SolarSystem.dir/object.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/object.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/object.cpp
CMakeFiles/SolarSystem.dir/object.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/SolarSystem.dir/object.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/object.cpp.o -MF CMakeFiles/SolarSystem.dir/object.cpp.o.d -o CMakeFiles/SolarSystem.dir/object.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/object.cpp

CMakeFiles/SolarSystem.dir/object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/object.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/object.cpp > CMakeFiles/SolarSystem.dir/object.cpp.i

CMakeFiles/SolarSystem.dir/object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/object.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/object.cpp -o CMakeFiles/SolarSystem.dir/object.cpp.s

CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/uvbuffer.cpp
CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o -MF CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o.d -o CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/uvbuffer.cpp

CMakeFiles/SolarSystem.dir/uvbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/uvbuffer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/uvbuffer.cpp > CMakeFiles/SolarSystem.dir/uvbuffer.cpp.i

CMakeFiles/SolarSystem.dir/uvbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/uvbuffer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/uvbuffer.cpp -o CMakeFiles/SolarSystem.dir/uvbuffer.cpp.s

CMakeFiles/SolarSystem.dir/texture.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/texture.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/texture.cpp
CMakeFiles/SolarSystem.dir/texture.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/SolarSystem.dir/texture.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/texture.cpp.o -MF CMakeFiles/SolarSystem.dir/texture.cpp.o.d -o CMakeFiles/SolarSystem.dir/texture.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/texture.cpp

CMakeFiles/SolarSystem.dir/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/texture.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/texture.cpp > CMakeFiles/SolarSystem.dir/texture.cpp.i

CMakeFiles/SolarSystem.dir/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/texture.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/texture.cpp -o CMakeFiles/SolarSystem.dir/texture.cpp.s

CMakeFiles/SolarSystem.dir/controls.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/controls.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/controls.cpp
CMakeFiles/SolarSystem.dir/controls.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/SolarSystem.dir/controls.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/controls.cpp.o -MF CMakeFiles/SolarSystem.dir/controls.cpp.o.d -o CMakeFiles/SolarSystem.dir/controls.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/controls.cpp

CMakeFiles/SolarSystem.dir/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/controls.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/controls.cpp > CMakeFiles/SolarSystem.dir/controls.cpp.i

CMakeFiles/SolarSystem.dir/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/controls.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/controls.cpp -o CMakeFiles/SolarSystem.dir/controls.cpp.s

CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/navigationcontrols.cpp
CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o -MF CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o.d -o CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/navigationcontrols.cpp

CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/navigationcontrols.cpp > CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.i

CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/navigationcontrols.cpp -o CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.s

CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/fpscontrols.cpp
CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o -MF CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o.d -o CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/fpscontrols.cpp

CMakeFiles/SolarSystem.dir/fpscontrols.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/fpscontrols.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/fpscontrols.cpp > CMakeFiles/SolarSystem.dir/fpscontrols.cpp.i

CMakeFiles/SolarSystem.dir/fpscontrols.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/fpscontrols.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/fpscontrols.cpp -o CMakeFiles/SolarSystem.dir/fpscontrols.cpp.s

CMakeFiles/SolarSystem.dir/planete.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/planete.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/planete.cpp
CMakeFiles/SolarSystem.dir/planete.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/SolarSystem.dir/planete.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/planete.cpp.o -MF CMakeFiles/SolarSystem.dir/planete.cpp.o.d -o CMakeFiles/SolarSystem.dir/planete.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/planete.cpp

CMakeFiles/SolarSystem.dir/planete.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/planete.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/planete.cpp > CMakeFiles/SolarSystem.dir/planete.cpp.i

CMakeFiles/SolarSystem.dir/planete.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/planete.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/planete.cpp -o CMakeFiles/SolarSystem.dir/planete.cpp.s

CMakeFiles/SolarSystem.dir/pointLight.cpp.o: CMakeFiles/SolarSystem.dir/flags.make
CMakeFiles/SolarSystem.dir/pointLight.cpp.o: /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/pointLight.cpp
CMakeFiles/SolarSystem.dir/pointLight.cpp.o: CMakeFiles/SolarSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/SolarSystem.dir/pointLight.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SolarSystem.dir/pointLight.cpp.o -MF CMakeFiles/SolarSystem.dir/pointLight.cpp.o.d -o CMakeFiles/SolarSystem.dir/pointLight.cpp.o -c /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/pointLight.cpp

CMakeFiles/SolarSystem.dir/pointLight.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SolarSystem.dir/pointLight.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/pointLight.cpp > CMakeFiles/SolarSystem.dir/pointLight.cpp.i

CMakeFiles/SolarSystem.dir/pointLight.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SolarSystem.dir/pointLight.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/pointLight.cpp -o CMakeFiles/SolarSystem.dir/pointLight.cpp.s

# Object files for target SolarSystem
SolarSystem_OBJECTS = \
"CMakeFiles/SolarSystem.dir/main.cpp.o" \
"CMakeFiles/SolarSystem.dir/camera.cpp.o" \
"CMakeFiles/SolarSystem.dir/stb_image.cpp.o" \
"CMakeFiles/SolarSystem.dir/renderer.cpp.o" \
"CMakeFiles/SolarSystem.dir/vertexarray.cpp.o" \
"CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o" \
"CMakeFiles/SolarSystem.dir/shader.cpp.o" \
"CMakeFiles/SolarSystem.dir/object.cpp.o" \
"CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o" \
"CMakeFiles/SolarSystem.dir/texture.cpp.o" \
"CMakeFiles/SolarSystem.dir/controls.cpp.o" \
"CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o" \
"CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o" \
"CMakeFiles/SolarSystem.dir/planete.cpp.o" \
"CMakeFiles/SolarSystem.dir/pointLight.cpp.o"

# External object files for target SolarSystem
SolarSystem_EXTERNAL_OBJECTS =

SolarSystem: CMakeFiles/SolarSystem.dir/main.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/camera.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/stb_image.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/renderer.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/vertexarray.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/vertexbuffer.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/shader.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/object.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/uvbuffer.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/texture.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/controls.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/navigationcontrols.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/fpscontrols.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/planete.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/pointLight.cpp.o
SolarSystem: CMakeFiles/SolarSystem.dir/build.make
SolarSystem: /usr/local/lib/libglfw.3.3.dylib
SolarSystem: /usr/local/lib/libGLEW.2.2.0.dylib
SolarSystem: CMakeFiles/SolarSystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable SolarSystem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SolarSystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SolarSystem.dir/build: SolarSystem
.PHONY : CMakeFiles/SolarSystem.dir/build

CMakeFiles/SolarSystem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SolarSystem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SolarSystem.dir/clean

CMakeFiles/SolarSystem.dir/depend:
	cd /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build /Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts/build/CMakeFiles/SolarSystem.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/SolarSystem.dir/depend

