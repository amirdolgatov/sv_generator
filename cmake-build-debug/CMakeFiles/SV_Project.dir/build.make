# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /home/amir/Downloads/clion-2022.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/amir/Downloads/clion-2022.2.4/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amir/Projects/sv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amir/Projects/sv/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SV_Project.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SV_Project.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SV_Project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SV_Project.dir/flags.make

CMakeFiles/SV_Project.dir/main.cpp.o: CMakeFiles/SV_Project.dir/flags.make
CMakeFiles/SV_Project.dir/main.cpp.o: ../main.cpp
CMakeFiles/SV_Project.dir/main.cpp.o: CMakeFiles/SV_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amir/Projects/sv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SV_Project.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SV_Project.dir/main.cpp.o -MF CMakeFiles/SV_Project.dir/main.cpp.o.d -o CMakeFiles/SV_Project.dir/main.cpp.o -c /home/amir/Projects/sv/main.cpp

CMakeFiles/SV_Project.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SV_Project.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amir/Projects/sv/main.cpp > CMakeFiles/SV_Project.dir/main.cpp.i

CMakeFiles/SV_Project.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SV_Project.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amir/Projects/sv/main.cpp -o CMakeFiles/SV_Project.dir/main.cpp.s

CMakeFiles/SV_Project.dir/sv_classes.cpp.o: CMakeFiles/SV_Project.dir/flags.make
CMakeFiles/SV_Project.dir/sv_classes.cpp.o: ../sv_classes.cpp
CMakeFiles/SV_Project.dir/sv_classes.cpp.o: CMakeFiles/SV_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amir/Projects/sv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SV_Project.dir/sv_classes.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SV_Project.dir/sv_classes.cpp.o -MF CMakeFiles/SV_Project.dir/sv_classes.cpp.o.d -o CMakeFiles/SV_Project.dir/sv_classes.cpp.o -c /home/amir/Projects/sv/sv_classes.cpp

CMakeFiles/SV_Project.dir/sv_classes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SV_Project.dir/sv_classes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amir/Projects/sv/sv_classes.cpp > CMakeFiles/SV_Project.dir/sv_classes.cpp.i

CMakeFiles/SV_Project.dir/sv_classes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SV_Project.dir/sv_classes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amir/Projects/sv/sv_classes.cpp -o CMakeFiles/SV_Project.dir/sv_classes.cpp.s

CMakeFiles/SV_Project.dir/SV_Frame.cpp.o: CMakeFiles/SV_Project.dir/flags.make
CMakeFiles/SV_Project.dir/SV_Frame.cpp.o: ../SV_Frame.cpp
CMakeFiles/SV_Project.dir/SV_Frame.cpp.o: CMakeFiles/SV_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amir/Projects/sv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SV_Project.dir/SV_Frame.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SV_Project.dir/SV_Frame.cpp.o -MF CMakeFiles/SV_Project.dir/SV_Frame.cpp.o.d -o CMakeFiles/SV_Project.dir/SV_Frame.cpp.o -c /home/amir/Projects/sv/SV_Frame.cpp

CMakeFiles/SV_Project.dir/SV_Frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SV_Project.dir/SV_Frame.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amir/Projects/sv/SV_Frame.cpp > CMakeFiles/SV_Project.dir/SV_Frame.cpp.i

CMakeFiles/SV_Project.dir/SV_Frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SV_Project.dir/SV_Frame.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amir/Projects/sv/SV_Frame.cpp -o CMakeFiles/SV_Project.dir/SV_Frame.cpp.s

CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o: CMakeFiles/SV_Project.dir/flags.make
CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o: ../Raw_Socket.cpp
CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o: CMakeFiles/SV_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amir/Projects/sv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o -MF CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o.d -o CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o -c /home/amir/Projects/sv/Raw_Socket.cpp

CMakeFiles/SV_Project.dir/Raw_Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SV_Project.dir/Raw_Socket.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amir/Projects/sv/Raw_Socket.cpp > CMakeFiles/SV_Project.dir/Raw_Socket.cpp.i

CMakeFiles/SV_Project.dir/Raw_Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SV_Project.dir/Raw_Socket.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amir/Projects/sv/Raw_Socket.cpp -o CMakeFiles/SV_Project.dir/Raw_Socket.cpp.s

CMakeFiles/SV_Project.dir/CalcModule.cpp.o: CMakeFiles/SV_Project.dir/flags.make
CMakeFiles/SV_Project.dir/CalcModule.cpp.o: ../CalcModule.cpp
CMakeFiles/SV_Project.dir/CalcModule.cpp.o: CMakeFiles/SV_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amir/Projects/sv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SV_Project.dir/CalcModule.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SV_Project.dir/CalcModule.cpp.o -MF CMakeFiles/SV_Project.dir/CalcModule.cpp.o.d -o CMakeFiles/SV_Project.dir/CalcModule.cpp.o -c /home/amir/Projects/sv/CalcModule.cpp

CMakeFiles/SV_Project.dir/CalcModule.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SV_Project.dir/CalcModule.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amir/Projects/sv/CalcModule.cpp > CMakeFiles/SV_Project.dir/CalcModule.cpp.i

CMakeFiles/SV_Project.dir/CalcModule.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SV_Project.dir/CalcModule.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amir/Projects/sv/CalcModule.cpp -o CMakeFiles/SV_Project.dir/CalcModule.cpp.s

CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o: CMakeFiles/SV_Project.dir/flags.make
CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o: ../Frames_Buffer.cpp
CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o: CMakeFiles/SV_Project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amir/Projects/sv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o -MF CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o.d -o CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o -c /home/amir/Projects/sv/Frames_Buffer.cpp

CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amir/Projects/sv/Frames_Buffer.cpp > CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.i

CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amir/Projects/sv/Frames_Buffer.cpp -o CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.s

# Object files for target SV_Project
SV_Project_OBJECTS = \
"CMakeFiles/SV_Project.dir/main.cpp.o" \
"CMakeFiles/SV_Project.dir/sv_classes.cpp.o" \
"CMakeFiles/SV_Project.dir/SV_Frame.cpp.o" \
"CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o" \
"CMakeFiles/SV_Project.dir/CalcModule.cpp.o" \
"CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o"

# External object files for target SV_Project
SV_Project_EXTERNAL_OBJECTS =

SV_Project: CMakeFiles/SV_Project.dir/main.cpp.o
SV_Project: CMakeFiles/SV_Project.dir/sv_classes.cpp.o
SV_Project: CMakeFiles/SV_Project.dir/SV_Frame.cpp.o
SV_Project: CMakeFiles/SV_Project.dir/Raw_Socket.cpp.o
SV_Project: CMakeFiles/SV_Project.dir/CalcModule.cpp.o
SV_Project: CMakeFiles/SV_Project.dir/Frames_Buffer.cpp.o
SV_Project: CMakeFiles/SV_Project.dir/build.make
SV_Project: CMakeFiles/SV_Project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amir/Projects/sv/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable SV_Project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SV_Project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SV_Project.dir/build: SV_Project
.PHONY : CMakeFiles/SV_Project.dir/build

CMakeFiles/SV_Project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SV_Project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SV_Project.dir/clean

CMakeFiles/SV_Project.dir/depend:
	cd /home/amir/Projects/sv/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amir/Projects/sv /home/amir/Projects/sv /home/amir/Projects/sv/cmake-build-debug /home/amir/Projects/sv/cmake-build-debug /home/amir/Projects/sv/cmake-build-debug/CMakeFiles/SV_Project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SV_Project.dir/depend
