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

# Include any dependencies generated for this target.
include sql/CMakeFiles/sqlgunitlib.dir/depend.make

# Include the progress variables for this target.
include sql/CMakeFiles/sqlgunitlib.dir/progress.make

# Include the compile flags for this target's objects.
include sql/CMakeFiles/sqlgunitlib.dir/flags.make

sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o: sql/CMakeFiles/sqlgunitlib.dir/flags.make
sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o: sql/filesort_utils.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o"
	cd /root/inception.b/sql && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o -c /root/inception.b/sql/filesort_utils.cc

sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.i"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/inception.b/sql/filesort_utils.cc > CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.i

sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.s"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/inception.b/sql/filesort_utils.cc -o CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.s

sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.requires:
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.requires

sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.provides: sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.requires
	$(MAKE) -f sql/CMakeFiles/sqlgunitlib.dir/build.make sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.provides.build
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.provides

sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.provides.build: sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o

sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o: sql/CMakeFiles/sqlgunitlib.dir/flags.make
sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o: sql/mdl.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o"
	cd /root/inception.b/sql && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sqlgunitlib.dir/mdl.cc.o -c /root/inception.b/sql/mdl.cc

sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlgunitlib.dir/mdl.cc.i"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/inception.b/sql/mdl.cc > CMakeFiles/sqlgunitlib.dir/mdl.cc.i

sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlgunitlib.dir/mdl.cc.s"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/inception.b/sql/mdl.cc -o CMakeFiles/sqlgunitlib.dir/mdl.cc.s

sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.requires:
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.requires

sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.provides: sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.requires
	$(MAKE) -f sql/CMakeFiles/sqlgunitlib.dir/build.make sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.provides.build
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.provides

sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.provides.build: sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o

sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o: sql/CMakeFiles/sqlgunitlib.dir/flags.make
sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o: sql/sql_list.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o"
	cd /root/inception.b/sql && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sqlgunitlib.dir/sql_list.cc.o -c /root/inception.b/sql/sql_list.cc

sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlgunitlib.dir/sql_list.cc.i"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/inception.b/sql/sql_list.cc > CMakeFiles/sqlgunitlib.dir/sql_list.cc.i

sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlgunitlib.dir/sql_list.cc.s"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/inception.b/sql/sql_list.cc -o CMakeFiles/sqlgunitlib.dir/sql_list.cc.s

sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.requires:
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.requires

sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.provides: sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.requires
	$(MAKE) -f sql/CMakeFiles/sqlgunitlib.dir/build.make sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.provides.build
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.provides

sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.provides.build: sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o

sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o: sql/CMakeFiles/sqlgunitlib.dir/flags.make
sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o: sql/sql_string.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o"
	cd /root/inception.b/sql && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sqlgunitlib.dir/sql_string.cc.o -c /root/inception.b/sql/sql_string.cc

sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlgunitlib.dir/sql_string.cc.i"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/inception.b/sql/sql_string.cc > CMakeFiles/sqlgunitlib.dir/sql_string.cc.i

sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlgunitlib.dir/sql_string.cc.s"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/inception.b/sql/sql_string.cc -o CMakeFiles/sqlgunitlib.dir/sql_string.cc.s

sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.requires:
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.requires

sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.provides: sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.requires
	$(MAKE) -f sql/CMakeFiles/sqlgunitlib.dir/build.make sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.provides.build
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.provides

sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.provides.build: sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o

sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o: sql/CMakeFiles/sqlgunitlib.dir/flags.make
sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o: sql/thr_malloc.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o"
	cd /root/inception.b/sql && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o -c /root/inception.b/sql/thr_malloc.cc

sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.i"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/inception.b/sql/thr_malloc.cc > CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.i

sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.s"
	cd /root/inception.b/sql && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/inception.b/sql/thr_malloc.cc -o CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.s

sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.requires:
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.requires

sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.provides: sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.requires
	$(MAKE) -f sql/CMakeFiles/sqlgunitlib.dir/build.make sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.provides.build
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.provides

sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.provides.build: sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o

# Object files for target sqlgunitlib
sqlgunitlib_OBJECTS = \
"CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o" \
"CMakeFiles/sqlgunitlib.dir/mdl.cc.o" \
"CMakeFiles/sqlgunitlib.dir/sql_list.cc.o" \
"CMakeFiles/sqlgunitlib.dir/sql_string.cc.o" \
"CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o"

# External object files for target sqlgunitlib
sqlgunitlib_EXTERNAL_OBJECTS =

sql/libsqlgunitlib.a: sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o
sql/libsqlgunitlib.a: sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o
sql/libsqlgunitlib.a: sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o
sql/libsqlgunitlib.a: sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o
sql/libsqlgunitlib.a: sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o
sql/libsqlgunitlib.a: sql/CMakeFiles/sqlgunitlib.dir/build.make
sql/libsqlgunitlib.a: sql/CMakeFiles/sqlgunitlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libsqlgunitlib.a"
	cd /root/inception.b/sql && $(CMAKE_COMMAND) -P CMakeFiles/sqlgunitlib.dir/cmake_clean_target.cmake
	cd /root/inception.b/sql && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sqlgunitlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sql/CMakeFiles/sqlgunitlib.dir/build: sql/libsqlgunitlib.a
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/build

sql/CMakeFiles/sqlgunitlib.dir/requires: sql/CMakeFiles/sqlgunitlib.dir/filesort_utils.cc.o.requires
sql/CMakeFiles/sqlgunitlib.dir/requires: sql/CMakeFiles/sqlgunitlib.dir/mdl.cc.o.requires
sql/CMakeFiles/sqlgunitlib.dir/requires: sql/CMakeFiles/sqlgunitlib.dir/sql_list.cc.o.requires
sql/CMakeFiles/sqlgunitlib.dir/requires: sql/CMakeFiles/sqlgunitlib.dir/sql_string.cc.o.requires
sql/CMakeFiles/sqlgunitlib.dir/requires: sql/CMakeFiles/sqlgunitlib.dir/thr_malloc.cc.o.requires
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/requires

sql/CMakeFiles/sqlgunitlib.dir/clean:
	cd /root/inception.b/sql && $(CMAKE_COMMAND) -P CMakeFiles/sqlgunitlib.dir/cmake_clean.cmake
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/clean

sql/CMakeFiles/sqlgunitlib.dir/depend:
	cd /root/inception.b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/inception.b /root/inception.b/sql /root/inception.b /root/inception.b/sql /root/inception.b/sql/CMakeFiles/sqlgunitlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sql/CMakeFiles/sqlgunitlib.dir/depend

