#!/bin/bash

# cmake && make && make install
cmake -DWITH_DEBUG=OFF -DCMAKE_INSTALL_PREFIX=./mysql  -DMYSQL_DATADIR=./mysql/data \
      -DWITH_SSL=bundled -DCMAKE_BUILD_TYPE=RELEASE -DWITH_ZLIB=bundled\
      -DMY_MAINTAINER_CXX_WARNINGS="-Wall -Wextra -Wunused -Wwrite-strings -Wunused-variable -Wunused-label -Wunused-function -Wunused-but-set-variable -Wno-strict-aliasing  -Wno-unused-parameter -Woverloaded-virtual" \
      -DMY_MAINTAINER_C_WARNINGS="-Wall -Wextra -Wno-dev -Wunused -Wwrite-strings -Wno-strict-aliasing -Wdeclaration-after-statement" \
      .
make install
