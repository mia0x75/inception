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
include regex/CMakeFiles/regex.dir/depend.make

# Include the progress variables for this target.
include regex/CMakeFiles/regex.dir/progress.make

# Include the compile flags for this target's objects.
include regex/CMakeFiles/regex.dir/flags.make

regex/CMakeFiles/regex.dir/regcomp.c.o: regex/CMakeFiles/regex.dir/flags.make
regex/CMakeFiles/regex.dir/regcomp.c.o: regex/regcomp.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object regex/CMakeFiles/regex.dir/regcomp.c.o"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/regex.dir/regcomp.c.o   -c /root/inception.b/regex/regcomp.c

regex/CMakeFiles/regex.dir/regcomp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/regex.dir/regcomp.c.i"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /root/inception.b/regex/regcomp.c > CMakeFiles/regex.dir/regcomp.c.i

regex/CMakeFiles/regex.dir/regcomp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/regex.dir/regcomp.c.s"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /root/inception.b/regex/regcomp.c -o CMakeFiles/regex.dir/regcomp.c.s

regex/CMakeFiles/regex.dir/regcomp.c.o.requires:
.PHONY : regex/CMakeFiles/regex.dir/regcomp.c.o.requires

regex/CMakeFiles/regex.dir/regcomp.c.o.provides: regex/CMakeFiles/regex.dir/regcomp.c.o.requires
	$(MAKE) -f regex/CMakeFiles/regex.dir/build.make regex/CMakeFiles/regex.dir/regcomp.c.o.provides.build
.PHONY : regex/CMakeFiles/regex.dir/regcomp.c.o.provides

regex/CMakeFiles/regex.dir/regcomp.c.o.provides.build: regex/CMakeFiles/regex.dir/regcomp.c.o

regex/CMakeFiles/regex.dir/regerror.c.o: regex/CMakeFiles/regex.dir/flags.make
regex/CMakeFiles/regex.dir/regerror.c.o: regex/regerror.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object regex/CMakeFiles/regex.dir/regerror.c.o"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/regex.dir/regerror.c.o   -c /root/inception.b/regex/regerror.c

regex/CMakeFiles/regex.dir/regerror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/regex.dir/regerror.c.i"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /root/inception.b/regex/regerror.c > CMakeFiles/regex.dir/regerror.c.i

regex/CMakeFiles/regex.dir/regerror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/regex.dir/regerror.c.s"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /root/inception.b/regex/regerror.c -o CMakeFiles/regex.dir/regerror.c.s

regex/CMakeFiles/regex.dir/regerror.c.o.requires:
.PHONY : regex/CMakeFiles/regex.dir/regerror.c.o.requires

regex/CMakeFiles/regex.dir/regerror.c.o.provides: regex/CMakeFiles/regex.dir/regerror.c.o.requires
	$(MAKE) -f regex/CMakeFiles/regex.dir/build.make regex/CMakeFiles/regex.dir/regerror.c.o.provides.build
.PHONY : regex/CMakeFiles/regex.dir/regerror.c.o.provides

regex/CMakeFiles/regex.dir/regerror.c.o.provides.build: regex/CMakeFiles/regex.dir/regerror.c.o

regex/CMakeFiles/regex.dir/regexec.c.o: regex/CMakeFiles/regex.dir/flags.make
regex/CMakeFiles/regex.dir/regexec.c.o: regex/regexec.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object regex/CMakeFiles/regex.dir/regexec.c.o"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/regex.dir/regexec.c.o   -c /root/inception.b/regex/regexec.c

regex/CMakeFiles/regex.dir/regexec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/regex.dir/regexec.c.i"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /root/inception.b/regex/regexec.c > CMakeFiles/regex.dir/regexec.c.i

regex/CMakeFiles/regex.dir/regexec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/regex.dir/regexec.c.s"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /root/inception.b/regex/regexec.c -o CMakeFiles/regex.dir/regexec.c.s

regex/CMakeFiles/regex.dir/regexec.c.o.requires:
.PHONY : regex/CMakeFiles/regex.dir/regexec.c.o.requires

regex/CMakeFiles/regex.dir/regexec.c.o.provides: regex/CMakeFiles/regex.dir/regexec.c.o.requires
	$(MAKE) -f regex/CMakeFiles/regex.dir/build.make regex/CMakeFiles/regex.dir/regexec.c.o.provides.build
.PHONY : regex/CMakeFiles/regex.dir/regexec.c.o.provides

regex/CMakeFiles/regex.dir/regexec.c.o.provides.build: regex/CMakeFiles/regex.dir/regexec.c.o

regex/CMakeFiles/regex.dir/regfree.c.o: regex/CMakeFiles/regex.dir/flags.make
regex/CMakeFiles/regex.dir/regfree.c.o: regex/regfree.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object regex/CMakeFiles/regex.dir/regfree.c.o"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/regex.dir/regfree.c.o   -c /root/inception.b/regex/regfree.c

regex/CMakeFiles/regex.dir/regfree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/regex.dir/regfree.c.i"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /root/inception.b/regex/regfree.c > CMakeFiles/regex.dir/regfree.c.i

regex/CMakeFiles/regex.dir/regfree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/regex.dir/regfree.c.s"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /root/inception.b/regex/regfree.c -o CMakeFiles/regex.dir/regfree.c.s

regex/CMakeFiles/regex.dir/regfree.c.o.requires:
.PHONY : regex/CMakeFiles/regex.dir/regfree.c.o.requires

regex/CMakeFiles/regex.dir/regfree.c.o.provides: regex/CMakeFiles/regex.dir/regfree.c.o.requires
	$(MAKE) -f regex/CMakeFiles/regex.dir/build.make regex/CMakeFiles/regex.dir/regfree.c.o.provides.build
.PHONY : regex/CMakeFiles/regex.dir/regfree.c.o.provides

regex/CMakeFiles/regex.dir/regfree.c.o.provides.build: regex/CMakeFiles/regex.dir/regfree.c.o

regex/CMakeFiles/regex.dir/reginit.c.o: regex/CMakeFiles/regex.dir/flags.make
regex/CMakeFiles/regex.dir/reginit.c.o: regex/reginit.c
	$(CMAKE_COMMAND) -E cmake_progress_report /root/inception.b/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object regex/CMakeFiles/regex.dir/reginit.c.o"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/regex.dir/reginit.c.o   -c /root/inception.b/regex/reginit.c

regex/CMakeFiles/regex.dir/reginit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/regex.dir/reginit.c.i"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /root/inception.b/regex/reginit.c > CMakeFiles/regex.dir/reginit.c.i

regex/CMakeFiles/regex.dir/reginit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/regex.dir/reginit.c.s"
	cd /root/inception.b/regex && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /root/inception.b/regex/reginit.c -o CMakeFiles/regex.dir/reginit.c.s

regex/CMakeFiles/regex.dir/reginit.c.o.requires:
.PHONY : regex/CMakeFiles/regex.dir/reginit.c.o.requires

regex/CMakeFiles/regex.dir/reginit.c.o.provides: regex/CMakeFiles/regex.dir/reginit.c.o.requires
	$(MAKE) -f regex/CMakeFiles/regex.dir/build.make regex/CMakeFiles/regex.dir/reginit.c.o.provides.build
.PHONY : regex/CMakeFiles/regex.dir/reginit.c.o.provides

regex/CMakeFiles/regex.dir/reginit.c.o.provides.build: regex/CMakeFiles/regex.dir/reginit.c.o

# Object files for target regex
regex_OBJECTS = \
"CMakeFiles/regex.dir/regcomp.c.o" \
"CMakeFiles/regex.dir/regerror.c.o" \
"CMakeFiles/regex.dir/regexec.c.o" \
"CMakeFiles/regex.dir/regfree.c.o" \
"CMakeFiles/regex.dir/reginit.c.o"

# External object files for target regex
regex_EXTERNAL_OBJECTS =

regex/libregex.a: regex/CMakeFiles/regex.dir/regcomp.c.o
regex/libregex.a: regex/CMakeFiles/regex.dir/regerror.c.o
regex/libregex.a: regex/CMakeFiles/regex.dir/regexec.c.o
regex/libregex.a: regex/CMakeFiles/regex.dir/regfree.c.o
regex/libregex.a: regex/CMakeFiles/regex.dir/reginit.c.o
regex/libregex.a: regex/CMakeFiles/regex.dir/build.make
regex/libregex.a: regex/CMakeFiles/regex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libregex.a"
	cd /root/inception.b/regex && $(CMAKE_COMMAND) -P CMakeFiles/regex.dir/cmake_clean_target.cmake
	cd /root/inception.b/regex && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/regex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
regex/CMakeFiles/regex.dir/build: regex/libregex.a
.PHONY : regex/CMakeFiles/regex.dir/build

regex/CMakeFiles/regex.dir/requires: regex/CMakeFiles/regex.dir/regcomp.c.o.requires
regex/CMakeFiles/regex.dir/requires: regex/CMakeFiles/regex.dir/regerror.c.o.requires
regex/CMakeFiles/regex.dir/requires: regex/CMakeFiles/regex.dir/regexec.c.o.requires
regex/CMakeFiles/regex.dir/requires: regex/CMakeFiles/regex.dir/regfree.c.o.requires
regex/CMakeFiles/regex.dir/requires: regex/CMakeFiles/regex.dir/reginit.c.o.requires
.PHONY : regex/CMakeFiles/regex.dir/requires

regex/CMakeFiles/regex.dir/clean:
	cd /root/inception.b/regex && $(CMAKE_COMMAND) -P CMakeFiles/regex.dir/cmake_clean.cmake
.PHONY : regex/CMakeFiles/regex.dir/clean

regex/CMakeFiles/regex.dir/depend:
	cd /root/inception.b && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/inception.b /root/inception.b/regex /root/inception.b /root/inception.b/regex /root/inception.b/regex/CMakeFiles/regex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : regex/CMakeFiles/regex.dir/depend

