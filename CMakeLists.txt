cmake_minimum_required(VERSION 3.14)
project(my_project)

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Enable testing right after project()
enable_testing()

# Fetch GoogleTest
include(FetchContent)
FetchContent_Declare(
    googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG v1.14.0
)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

# Create calculator library
add_library(calculator 
    calculator.cpp
    calculator.hpp
)
target_include_directories(calculator PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Add main executable
add_executable(main_app main.cpp)
target_link_libraries(main_app PRIVATE calculator)

# Add test executable
add_executable(calculator_tests calculator_test.cpp)
target_link_libraries(calculator_tests
    PRIVATE
    GTest::gtest
    GTest::gtest_main
    calculator
)

# Enable testing and add tests
include(GoogleTest)
gtest_discover_tests(calculator_tests)