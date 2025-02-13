#!/bin/bash

ROOT_DIR=$(pwd)
set -e

rm -rf $ROOT_DIR/third_party/*
rm .gitmodules

git submodule add https://github.com/CESNET/libyang.git third_party/libyang
git submodule add https://github.com/sysrepo/sysrepo.git third_party/sysrepo
git submodule update --init --recursive


# echo $ROOT_DIR
# cd third_party/libyang
# echo $(pwd)

# if [ -d "build" ]; then
#     echo "############remove dir build LIBYANG!!! ############"
#     rm -rf build
#     mkdir build && cd build
#     cmake ..
#     make -j$(nproc)
# else
#     mkdir build && cd build
#     cmake ..
#     make -j$(nproc)
# fi

# cd $ROOT_DIR/third_party/sysrepo
# echo $(pwd)

# if [ -d "build" ]; then
#     echo "############ remove dir build from SYSREPO!!! ############"
#     rm -rf build
#     mkdir build && cd build
#     cmake -DCMAKE_PREFIX_PATH=$ROOT_DIR/third_party/libyang/build ..
#     make -j$(nproc)
# else
#     mkdir build && cd build
#     cmake -DCMAKE_PREFIX_PATH=$ROOT_DIR/third_party/libyang/build ..
#     make -j$(nproc)
#     echo "############ SYSREPO was builded!!! ############"
# fi