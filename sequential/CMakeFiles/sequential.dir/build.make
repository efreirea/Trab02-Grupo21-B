# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential

# Include any dependencies generated for this target.
include CMakeFiles/sequential.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sequential.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sequential.dir/flags.make

CMakeFiles/sequential.dir/sequential.cpp.o: CMakeFiles/sequential.dir/flags.make
CMakeFiles/sequential.dir/sequential.cpp.o: sequential.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sequential.dir/sequential.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sequential.dir/sequential.cpp.o -c /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential/sequential.cpp

CMakeFiles/sequential.dir/sequential.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sequential.dir/sequential.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential/sequential.cpp > CMakeFiles/sequential.dir/sequential.cpp.i

CMakeFiles/sequential.dir/sequential.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sequential.dir/sequential.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential/sequential.cpp -o CMakeFiles/sequential.dir/sequential.cpp.s

CMakeFiles/sequential.dir/sequential.cpp.o.requires:
.PHONY : CMakeFiles/sequential.dir/sequential.cpp.o.requires

CMakeFiles/sequential.dir/sequential.cpp.o.provides: CMakeFiles/sequential.dir/sequential.cpp.o.requires
	$(MAKE) -f CMakeFiles/sequential.dir/build.make CMakeFiles/sequential.dir/sequential.cpp.o.provides.build
.PHONY : CMakeFiles/sequential.dir/sequential.cpp.o.provides

CMakeFiles/sequential.dir/sequential.cpp.o.provides.build: CMakeFiles/sequential.dir/sequential.cpp.o

# Object files for target sequential
sequential_OBJECTS = \
"CMakeFiles/sequential.dir/sequential.cpp.o"

# External object files for target sequential
sequential_EXTERNAL_OBJECTS =

sequential: CMakeFiles/sequential.dir/sequential.cpp.o
sequential: CMakeFiles/sequential.dir/build.make
sequential: /usr/local/lib/libopencv_videostab.so.3.0.0
sequential: /usr/local/lib/libopencv_videoio.so.3.0.0
sequential: /usr/local/lib/libopencv_video.so.3.0.0
sequential: /usr/local/lib/libopencv_superres.so.3.0.0
sequential: /usr/local/lib/libopencv_stitching.so.3.0.0
sequential: /usr/local/lib/libopencv_shape.so.3.0.0
sequential: /usr/local/lib/libopencv_photo.so.3.0.0
sequential: /usr/local/lib/libopencv_objdetect.so.3.0.0
sequential: /usr/local/lib/libopencv_ml.so.3.0.0
sequential: /usr/local/lib/libopencv_imgproc.so.3.0.0
sequential: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
sequential: /usr/local/lib/libopencv_highgui.so.3.0.0
sequential: /usr/local/lib/libopencv_hal.a
sequential: /usr/local/lib/libopencv_flann.so.3.0.0
sequential: /usr/local/lib/libopencv_features2d.so.3.0.0
sequential: /usr/local/lib/libopencv_core.so.3.0.0
sequential: /usr/local/lib/libopencv_calib3d.so.3.0.0
sequential: /usr/local/lib/libopencv_features2d.so.3.0.0
sequential: /usr/local/lib/libopencv_ml.so.3.0.0
sequential: /usr/local/lib/libopencv_highgui.so.3.0.0
sequential: /usr/local/lib/libopencv_videoio.so.3.0.0
sequential: /usr/local/lib/libopencv_imgcodecs.so.3.0.0
sequential: /usr/local/lib/libopencv_flann.so.3.0.0
sequential: /usr/local/lib/libopencv_video.so.3.0.0
sequential: /usr/local/lib/libopencv_imgproc.so.3.0.0
sequential: /usr/local/lib/libopencv_core.so.3.0.0
sequential: /usr/local/lib/libopencv_hal.a
sequential: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
sequential: CMakeFiles/sequential.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sequential"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sequential.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sequential.dir/build: sequential
.PHONY : CMakeFiles/sequential.dir/build

CMakeFiles/sequential.dir/requires: CMakeFiles/sequential.dir/sequential.cpp.o.requires
.PHONY : CMakeFiles/sequential.dir/requires

CMakeFiles/sequential.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sequential.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sequential.dir/clean

CMakeFiles/sequential.dir/depend:
	cd /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential /home/debianlinux/USP/Concorrente/T2/Trab02-Grupo21-B/sequential/CMakeFiles/sequential.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sequential.dir/depend

