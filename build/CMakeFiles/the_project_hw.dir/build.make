# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/goradef/Projects/TestHandlerOnQT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/goradef/Projects/TestHandlerOnQT/build

# Include any dependencies generated for this target.
include CMakeFiles/the_project_hw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/the_project_hw.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/the_project_hw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/the_project_hw.dir/flags.make

the_project_hw_autogen/timestamp: /usr/bin/moc
the_project_hw_autogen/timestamp: /usr/bin/uic
the_project_hw_autogen/timestamp: CMakeFiles/the_project_hw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/goradef/Projects/TestHandlerOnQT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target the_project_hw"
	/usr/bin/cmake -E cmake_autogen /home/goradef/Projects/TestHandlerOnQT/build/CMakeFiles/the_project_hw_autogen.dir/AutogenInfo.json ""
	/usr/bin/cmake -E touch /home/goradef/Projects/TestHandlerOnQT/build/the_project_hw_autogen/timestamp

CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o: CMakeFiles/the_project_hw.dir/flags.make
CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o: the_project_hw_autogen/mocs_compilation.cpp
CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o: CMakeFiles/the_project_hw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goradef/Projects/TestHandlerOnQT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o -MF CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o -c /home/goradef/Projects/TestHandlerOnQT/build/the_project_hw_autogen/mocs_compilation.cpp

CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/goradef/Projects/TestHandlerOnQT/build/the_project_hw_autogen/mocs_compilation.cpp > CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.i

CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/goradef/Projects/TestHandlerOnQT/build/the_project_hw_autogen/mocs_compilation.cpp -o CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.s

CMakeFiles/the_project_hw.dir/main.cpp.o: CMakeFiles/the_project_hw.dir/flags.make
CMakeFiles/the_project_hw.dir/main.cpp.o: /home/goradef/Projects/TestHandlerOnQT/main.cpp
CMakeFiles/the_project_hw.dir/main.cpp.o: CMakeFiles/the_project_hw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goradef/Projects/TestHandlerOnQT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/the_project_hw.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/the_project_hw.dir/main.cpp.o -MF CMakeFiles/the_project_hw.dir/main.cpp.o.d -o CMakeFiles/the_project_hw.dir/main.cpp.o -c /home/goradef/Projects/TestHandlerOnQT/main.cpp

CMakeFiles/the_project_hw.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/the_project_hw.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/goradef/Projects/TestHandlerOnQT/main.cpp > CMakeFiles/the_project_hw.dir/main.cpp.i

CMakeFiles/the_project_hw.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/the_project_hw.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/goradef/Projects/TestHandlerOnQT/main.cpp -o CMakeFiles/the_project_hw.dir/main.cpp.s

CMakeFiles/the_project_hw.dir/mainwindow.cpp.o: CMakeFiles/the_project_hw.dir/flags.make
CMakeFiles/the_project_hw.dir/mainwindow.cpp.o: /home/goradef/Projects/TestHandlerOnQT/mainwindow.cpp
CMakeFiles/the_project_hw.dir/mainwindow.cpp.o: CMakeFiles/the_project_hw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/goradef/Projects/TestHandlerOnQT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/the_project_hw.dir/mainwindow.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/the_project_hw.dir/mainwindow.cpp.o -MF CMakeFiles/the_project_hw.dir/mainwindow.cpp.o.d -o CMakeFiles/the_project_hw.dir/mainwindow.cpp.o -c /home/goradef/Projects/TestHandlerOnQT/mainwindow.cpp

CMakeFiles/the_project_hw.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/the_project_hw.dir/mainwindow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/goradef/Projects/TestHandlerOnQT/mainwindow.cpp > CMakeFiles/the_project_hw.dir/mainwindow.cpp.i

CMakeFiles/the_project_hw.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/the_project_hw.dir/mainwindow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/goradef/Projects/TestHandlerOnQT/mainwindow.cpp -o CMakeFiles/the_project_hw.dir/mainwindow.cpp.s

# Object files for target the_project_hw
the_project_hw_OBJECTS = \
"CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/the_project_hw.dir/main.cpp.o" \
"CMakeFiles/the_project_hw.dir/mainwindow.cpp.o"

# External object files for target the_project_hw
the_project_hw_EXTERNAL_OBJECTS =

the_project_hw: CMakeFiles/the_project_hw.dir/the_project_hw_autogen/mocs_compilation.cpp.o
the_project_hw: CMakeFiles/the_project_hw.dir/main.cpp.o
the_project_hw: CMakeFiles/the_project_hw.dir/mainwindow.cpp.o
the_project_hw: CMakeFiles/the_project_hw.dir/build.make
the_project_hw: /usr/lib/libQt5Widgets.so.5.15.13
the_project_hw: /usr/lib/libQt5Gui.so.5.15.13
the_project_hw: /usr/lib/libQt5Core.so.5.15.13
the_project_hw: CMakeFiles/the_project_hw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/goradef/Projects/TestHandlerOnQT/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable the_project_hw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/the_project_hw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/the_project_hw.dir/build: the_project_hw
.PHONY : CMakeFiles/the_project_hw.dir/build

CMakeFiles/the_project_hw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/the_project_hw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/the_project_hw.dir/clean

CMakeFiles/the_project_hw.dir/depend: the_project_hw_autogen/timestamp
	cd /home/goradef/Projects/TestHandlerOnQT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/goradef/Projects/TestHandlerOnQT /home/goradef/Projects/TestHandlerOnQT /home/goradef/Projects/TestHandlerOnQT/build /home/goradef/Projects/TestHandlerOnQT/build /home/goradef/Projects/TestHandlerOnQT/build/CMakeFiles/the_project_hw.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/the_project_hw.dir/depend

