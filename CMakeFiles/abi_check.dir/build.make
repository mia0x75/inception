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

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/inception.b

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/inception.b

# Utility rule file for abi_check.

# Include the progress variables for this target.
include CMakeFiles/abi_check.dir/progress.make

CMakeFiles/abi_check:
	/usr/bin/cmake -DCOMPILER=/usr/bin/cc -DSOURCE_DIR=/root/inception.b -DBINARY_DIR=/root/inception.b "-DABI_HEADERS=/root/inception.b/include/mysql/plugin_audit.h;/root/inception.b/include/mysql/plugin_ftparser.h;/root/inception.b/include/mysql.h;/root/inception.b/include/mysql/psi/psi_abi_v0.h;/root/inception.b/include/mysql/psi/psi_abi_v1.h;/root/inception.b/include/mysql/psi/psi_abi_v2.h;/root/inception.b/include/mysql/client_plugin.h;/root/inception.b/include/mysql/plugin_auth.h" -P /root/inception.b/cmake/do_abi_check.cmake

abi_check: CMakeFiles/abi_check
abi_check: CMakeFiles/abi_check.dir/build.make
.PHONY : abi_check

# Rule to build all files generated by this target.
CMakeFiles/abi_check.dir/build: abi_check
.PHONY : CMakeFiles/abi_check.dir/build

CMakeFiles/abi_check.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/abi_check.dir/cmake_clean.cmake
.PHONY : CMakeFiles/abi_check.dir/clean

CMakeFiles/abi_check.dir/depend:
	cd /root/inception.b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/inception.b /root/inception.b /root/inception.b /root/inception.b /root/inception.b/CMakeFiles/abi_check.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/abi_check.dir/depend

