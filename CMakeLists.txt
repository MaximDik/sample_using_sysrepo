cmake_minimum_required(VERSION 3.10)

project(sample_using_sysrepo)

add_subdirectory(third_party/libyang)
add_subdirectory(third_party/sysrepo)

add_subdirectory(src)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)

include_directories(
    third_party/libyang/include
    third_party/sysrepo/include
)

link_directories(
    third_party/libyang/build
    third_party/libyang/build
)

add_executable(sysrepo_test src/main.cpp)

target_link_libraries(sysrepo_test PRIVATE sysrepo libyang)