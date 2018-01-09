# Install script for directory: /root/inception.b/man

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/root/inception.b/mysql")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "ManPages")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man1" TYPE FILE FILES
    "/root/inception.b/man/comp_err.1"
    "/root/inception.b/man/innochecksum.1"
    "/root/inception.b/man/msql2mysql.1"
    "/root/inception.b/man/my_print_defaults.1"
    "/root/inception.b/man/myisam_ftdump.1"
    "/root/inception.b/man/myisamchk.1"
    "/root/inception.b/man/myisamlog.1"
    "/root/inception.b/man/myisampack.1"
    "/root/inception.b/man/mysql-stress-test.pl.1"
    "/root/inception.b/man/mysql-test-run.pl.1"
    "/root/inception.b/man/mysql.1"
    "/root/inception.b/man/mysql.server.1"
    "/root/inception.b/man/mysql_client_test.1"
    "/root/inception.b/man/mysql_client_test_embedded.1"
    "/root/inception.b/man/mysql_config.1"
    "/root/inception.b/man/mysql_config_editor.1"
    "/root/inception.b/man/mysql_convert_table_format.1"
    "/root/inception.b/man/mysql_find_rows.1"
    "/root/inception.b/man/mysql_fix_extensions.1"
    "/root/inception.b/man/mysql_install_db.1"
    "/root/inception.b/man/mysql_plugin.1"
    "/root/inception.b/man/mysql_secure_installation.1"
    "/root/inception.b/man/mysql_setpermission.1"
    "/root/inception.b/man/mysql_tzinfo_to_sql.1"
    "/root/inception.b/man/mysql_upgrade.1"
    "/root/inception.b/man/mysql_waitpid.1"
    "/root/inception.b/man/mysql_zap.1"
    "/root/inception.b/man/mysqlaccess.1"
    "/root/inception.b/man/mysqladmin.1"
    "/root/inception.b/man/mysqlbinlog.1"
    "/root/inception.b/man/mysqlbug.1"
    "/root/inception.b/man/mysqlcheck.1"
    "/root/inception.b/man/mysqld_multi.1"
    "/root/inception.b/man/mysqld_safe.1"
    "/root/inception.b/man/mysqldump.1"
    "/root/inception.b/man/mysqldumpslow.1"
    "/root/inception.b/man/mysqlhotcopy.1"
    "/root/inception.b/man/mysqlimport.1"
    "/root/inception.b/man/mysqlman.1"
    "/root/inception.b/man/mysqlshow.1"
    "/root/inception.b/man/mysqlslap.1"
    "/root/inception.b/man/mysqltest.1"
    "/root/inception.b/man/mysqltest_embedded.1"
    "/root/inception.b/man/perror.1"
    "/root/inception.b/man/replace.1"
    "/root/inception.b/man/resolve_stack_dump.1"
    "/root/inception.b/man/resolveip.1"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "ManPages")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "ManPages")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man8" TYPE FILE FILES "/root/inception.b/man/mysqld.8")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "ManPages")

