cmake_minimum_required(VERSION 3.14)
project(my_project)

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Fetch GoogleTest
include(FetchContent)
FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Add the Calculator library
add_library(calculator calculator.cpp)

# Add main executable
add_executable(main_app main.cpp)
target_link_libraries(main_app calculator)

# Add test executable
enable_testing()
add_executable(calculator_tests calculator_test.cpp)
target_link_libraries(calculator_tests
    GTest::gtest_main
    calculator
)
include(GoogleTest)
gtest_discover_tests(calculator_tests)