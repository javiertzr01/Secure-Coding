# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/SVF-tools/Teaching-Software-Verification

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/SVF-tools/Teaching-Software-Verification

# Include any dependencies generated for this target.
include Assignment-2/CMakeFiles/assign-2.dir/depend.make

# Include the progress variables for this target.
include Assignment-2/CMakeFiles/assign-2.dir/progress.make

# Include the compile flags for this target's objects.
include Assignment-2/CMakeFiles/assign-2.dir/flags.make

Assignment-2/CMakeFiles/assign-2.dir/Assignment-2.cpp.o: Assignment-2/CMakeFiles/assign-2.dir/flags.make
Assignment-2/CMakeFiles/assign-2.dir/Assignment-2.cpp.o: Assignment-2/Assignment-2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/SVF-tools/Teaching-Software-Verification/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Assignment-2/CMakeFiles/assign-2.dir/Assignment-2.cpp.o"
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assign-2.dir/Assignment-2.cpp.o -c /home/SVF-tools/Teaching-Software-Verification/Assignment-2/Assignment-2.cpp

Assignment-2/CMakeFiles/assign-2.dir/Assignment-2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assign-2.dir/Assignment-2.cpp.i"
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/SVF-tools/Teaching-Software-Verification/Assignment-2/Assignment-2.cpp > CMakeFiles/assign-2.dir/Assignment-2.cpp.i

Assignment-2/CMakeFiles/assign-2.dir/Assignment-2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assign-2.dir/Assignment-2.cpp.s"
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/SVF-tools/Teaching-Software-Verification/Assignment-2/Assignment-2.cpp -o CMakeFiles/assign-2.dir/Assignment-2.cpp.s

Assignment-2/CMakeFiles/assign-2.dir/Test2.cpp.o: Assignment-2/CMakeFiles/assign-2.dir/flags.make
Assignment-2/CMakeFiles/assign-2.dir/Test2.cpp.o: Assignment-2/Test2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/SVF-tools/Teaching-Software-Verification/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Assignment-2/CMakeFiles/assign-2.dir/Test2.cpp.o"
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assign-2.dir/Test2.cpp.o -c /home/SVF-tools/Teaching-Software-Verification/Assignment-2/Test2.cpp

Assignment-2/CMakeFiles/assign-2.dir/Test2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assign-2.dir/Test2.cpp.i"
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/SVF-tools/Teaching-Software-Verification/Assignment-2/Test2.cpp > CMakeFiles/assign-2.dir/Test2.cpp.i

Assignment-2/CMakeFiles/assign-2.dir/Test2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assign-2.dir/Test2.cpp.s"
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/SVF-tools/Teaching-Software-Verification/Assignment-2/Test2.cpp -o CMakeFiles/assign-2.dir/Test2.cpp.s

# Object files for target assign-2
assign__2_OBJECTS = \
"CMakeFiles/assign-2.dir/Assignment-2.cpp.o" \
"CMakeFiles/assign-2.dir/Test2.cpp.o"

# External object files for target assign-2
assign__2_EXTERNAL_OBJECTS =

bin/assign-2: Assignment-2/CMakeFiles/assign-2.dir/Assignment-2.cpp.o
bin/assign-2: Assignment-2/CMakeFiles/assign-2.dir/Test2.cpp.o
bin/assign-2: Assignment-2/CMakeFiles/assign-2.dir/build.make
bin/assign-2: /home/SVF-tools/SVF/Release-build/svf-llvm/libSvfLLVM.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMBitWriter.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMCore.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMipo.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMIRReader.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMInstCombine.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMInstrumentation.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMTarget.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMLinker.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMAnalysis.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMScalarOpts.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMSupport.a
bin/assign-2: /home/SVF-tools/SVF/z3.obj/bin/libz3.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMBitWriter.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMAsmParser.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMFrontendOpenMP.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMScalarOpts.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMInstCombine.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMAggressiveInstCombine.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMVectorize.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMTransformUtils.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMAnalysis.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMProfileData.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMDebugInfoDWARF.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMObject.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMBitReader.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMCore.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMRemarks.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMBitstreamReader.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMMCParser.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMTextAPI.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMMC.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMBinaryFormat.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMDebugInfoCodeView.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMSupport.a
bin/assign-2: /home/SVF-tools/SVF/llvm-14.0.0.obj/lib/libLLVMDemangle.a
bin/assign-2: Assignment-2/CMakeFiles/assign-2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/SVF-tools/Teaching-Software-Verification/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/assign-2"
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assign-2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Assignment-2/CMakeFiles/assign-2.dir/build: bin/assign-2

.PHONY : Assignment-2/CMakeFiles/assign-2.dir/build

Assignment-2/CMakeFiles/assign-2.dir/clean:
	cd /home/SVF-tools/Teaching-Software-Verification/Assignment-2 && $(CMAKE_COMMAND) -P CMakeFiles/assign-2.dir/cmake_clean.cmake
.PHONY : Assignment-2/CMakeFiles/assign-2.dir/clean

Assignment-2/CMakeFiles/assign-2.dir/depend:
	cd /home/SVF-tools/Teaching-Software-Verification && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/SVF-tools/Teaching-Software-Verification /home/SVF-tools/Teaching-Software-Verification/Assignment-2 /home/SVF-tools/Teaching-Software-Verification /home/SVF-tools/Teaching-Software-Verification/Assignment-2 /home/SVF-tools/Teaching-Software-Verification/Assignment-2/CMakeFiles/assign-2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Assignment-2/CMakeFiles/assign-2.dir/depend
