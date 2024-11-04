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

# Set source files explicitly
set(CALCULATOR_SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/calculator.cpp
)

set(CALCULATOR_HEADERS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/calculator.hpp
)

# Create calculator library
add_library(calculator STATIC
    ${CALCULATOR_SOURCES}
    ${CALCULATOR_HEADERS}
)

# Set include directories
target_include_directories(calculator
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Add main executable
add_executable(main_app 
    ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
)
target_link_libraries(main_app 
    PUBLIC calculator
)
target_include_directories(main_app
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Add test executable
add_executable(calculator_tests 
    ${CMAKE_CURRENT_SOURCE_DIR}/tests/calculator_test.cpp
)
target_link_libraries(calculator_tests
    PRIVATE
    GTest::gtest
    GTest::gtest_main
    calculator
)
target_include_directories(calculator_tests
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Enable testing and add tests
include(GoogleTest)
gtest_discover_tests(calculator_tests)