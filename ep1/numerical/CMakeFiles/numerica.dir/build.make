# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical

# Include any dependencies generated for this target.
include CMakeFiles/numerica.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/numerica.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/numerica.dir/flags.make

CMakeFiles/numerica.dir/main.cpp.o: CMakeFiles/numerica.dir/flags.make
CMakeFiles/numerica.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/numerica.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/numerica.dir/main.cpp.o -c /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/main.cpp

CMakeFiles/numerica.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/numerica.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/main.cpp > CMakeFiles/numerica.dir/main.cpp.i

CMakeFiles/numerica.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/numerica.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/main.cpp -o CMakeFiles/numerica.dir/main.cpp.s

CMakeFiles/numerica.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/numerica.dir/main.cpp.o.requires

CMakeFiles/numerica.dir/main.cpp.o.provides: CMakeFiles/numerica.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/numerica.dir/build.make CMakeFiles/numerica.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/numerica.dir/main.cpp.o.provides

CMakeFiles/numerica.dir/main.cpp.o.provides.build: CMakeFiles/numerica.dir/main.cpp.o


CMakeFiles/numerica.dir/coordinates/Coord.cpp.o: CMakeFiles/numerica.dir/flags.make
CMakeFiles/numerica.dir/coordinates/Coord.cpp.o: coordinates/Coord.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/numerica.dir/coordinates/Coord.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/numerica.dir/coordinates/Coord.cpp.o -c /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/coordinates/Coord.cpp

CMakeFiles/numerica.dir/coordinates/Coord.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/numerica.dir/coordinates/Coord.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/coordinates/Coord.cpp > CMakeFiles/numerica.dir/coordinates/Coord.cpp.i

CMakeFiles/numerica.dir/coordinates/Coord.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/numerica.dir/coordinates/Coord.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/coordinates/Coord.cpp -o CMakeFiles/numerica.dir/coordinates/Coord.cpp.s

CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.requires:

.PHONY : CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.requires

CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.provides: CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.requires
	$(MAKE) -f CMakeFiles/numerica.dir/build.make CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.provides.build
.PHONY : CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.provides

CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.provides.build: CMakeFiles/numerica.dir/coordinates/Coord.cpp.o


CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o: CMakeFiles/numerica.dir/flags.make
CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o: coordinates/CoordList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o -c /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/coordinates/CoordList.cpp

CMakeFiles/numerica.dir/coordinates/CoordList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/numerica.dir/coordinates/CoordList.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/coordinates/CoordList.cpp > CMakeFiles/numerica.dir/coordinates/CoordList.cpp.i

CMakeFiles/numerica.dir/coordinates/CoordList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/numerica.dir/coordinates/CoordList.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/coordinates/CoordList.cpp -o CMakeFiles/numerica.dir/coordinates/CoordList.cpp.s

CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.requires:

.PHONY : CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.requires

CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.provides: CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.requires
	$(MAKE) -f CMakeFiles/numerica.dir/build.make CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.provides.build
.PHONY : CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.provides

CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.provides.build: CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o


CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o: CMakeFiles/numerica.dir/flags.make
CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o: numericalAlgorithms/SplineDiff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o -c /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/numericalAlgorithms/SplineDiff.cpp

CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/numericalAlgorithms/SplineDiff.cpp > CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.i

CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/numericalAlgorithms/SplineDiff.cpp -o CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.s

CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.requires:

.PHONY : CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.requires

CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.provides: CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.requires
	$(MAKE) -f CMakeFiles/numerica.dir/build.make CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.provides.build
.PHONY : CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.provides

CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.provides.build: CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o


CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o: CMakeFiles/numerica.dir/flags.make
CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o: numericalAlgorithms/spline.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o -c /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/numericalAlgorithms/spline.cpp

CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/numericalAlgorithms/spline.cpp > CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.i

CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/numericalAlgorithms/spline.cpp -o CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.s

CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.requires:

.PHONY : CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.requires

CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.provides: CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.requires
	$(MAKE) -f CMakeFiles/numerica.dir/build.make CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.provides.build
.PHONY : CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.provides

CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.provides.build: CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o


# Object files for target numerica
numerica_OBJECTS = \
"CMakeFiles/numerica.dir/main.cpp.o" \
"CMakeFiles/numerica.dir/coordinates/Coord.cpp.o" \
"CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o" \
"CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o" \
"CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o"

# External object files for target numerica
numerica_EXTERNAL_OBJECTS =

numerica: CMakeFiles/numerica.dir/main.cpp.o
numerica: CMakeFiles/numerica.dir/coordinates/Coord.cpp.o
numerica: CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o
numerica: CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o
numerica: CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o
numerica: CMakeFiles/numerica.dir/build.make
numerica: CMakeFiles/numerica.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable numerica"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/numerica.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/numerica.dir/build: numerica

.PHONY : CMakeFiles/numerica.dir/build

CMakeFiles/numerica.dir/requires: CMakeFiles/numerica.dir/main.cpp.o.requires
CMakeFiles/numerica.dir/requires: CMakeFiles/numerica.dir/coordinates/Coord.cpp.o.requires
CMakeFiles/numerica.dir/requires: CMakeFiles/numerica.dir/coordinates/CoordList.cpp.o.requires
CMakeFiles/numerica.dir/requires: CMakeFiles/numerica.dir/numericalAlgorithms/SplineDiff.cpp.o.requires
CMakeFiles/numerica.dir/requires: CMakeFiles/numerica.dir/numericalAlgorithms/spline.cpp.o.requires

.PHONY : CMakeFiles/numerica.dir/requires

CMakeFiles/numerica.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/numerica.dir/cmake_clean.cmake
.PHONY : CMakeFiles/numerica.dir/clean

CMakeFiles/numerica.dir/depend:
	cd /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical /Users/andreperello/Repositories/IME/courses/MAP2220/EP1/numerical/CMakeFiles/numerica.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/numerica.dir/depend
