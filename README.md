# C++ Development Container with Google Test

A ready-to-use development container for C++ projects with CMake and Google Test integration. This template provides a consistent development environment across different machines using Visual Studio Code's devcontainer feature.

## Features

- C++20 support
- CMake build system
- Google Test framework integration
- VSCode debugging configuration
- Automated build and test workflow
- Clang compiler toolchain

## Prerequisites

- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker](https://www.docker.com/products/docker-desktop)
- [Dev Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Quick Start

1. Clone this repository:
```bash
git clone https://github.com/pkramek/cpp-devcontainer.git
cd cpp-devcontainer
```

2. Open in VSCode:
```bash
code .
```

3. When prompted, click "Reopen in Container" or:
   - Press `F1` (or `Ctrl/Cmd + Shift + P`)
   - Type "Reopen in Container"
   - Press Enter

## Project Structure

```plaintext
.
├── .devcontainer/
│   ├── devcontainer.json
│   └── Dockerfile
├── .vscode/
│   ├── c_cpp_properties.json
│   ├── launch.json
│   ├── tasks.json
│   └── settings.json
├── src/
│   ├── calculator.cpp
│   └── calculator.hpp
├── tests/
│   └── calculator_test.cpp
├── main.cpp
├── CMakeLists.txt
└── README.md
```

## Development Workflow

### Building the Project

**Using VSCode:**
- Click the "Build" button in the status bar
- Or press `Ctrl/Cmd + Shift + B`

**Using terminal:**
```bash
mkdir build
cd build
cmake ..
make
```

### Running the Application

**Using VSCode:**
- Click the play button (▶️) in the top right
- Or press `F5` to debug

**Using terminal:**
```bash
./build/main_app
```

### Running Tests

**Using VSCode:**
- Open the Testing tab in the sidebar
- Click the play button next to the test you want to run

**Using terminal:**
```bash
cd build
ctest --verbose
```

## Adding New Code

### Source Files

1. Create your `.cpp` and `.hpp` files
2. Add them to `CMakeLists.txt`:
```cmake
add_library(your_library
    src/your_file.cpp
    src/your_file.hpp
)
```

### Test Files

1. Create a new test file in the tests directory
2. Add it to `CMakeLists.txt`:
```cmake
add_executable(your_test tests/your_test.cpp)
target_link_libraries(your_test
    PRIVATE
    GTest::gtest
    GTest::gtest_main
    your_library
)
gtest_discover_tests(your_test)
```

## Included VSCode Extensions

- [C/C++ Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools-extension-pack)
- [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)
- [CMake Language Support](https://marketplace.visualstudio.com/items?itemName=twxs.cmake)
- [Google Test Explorer](https://marketplace.visualstudio.com/items?itemName=DavidSchuldenfrei.gtest-adapter)

## Debugging

1. Set breakpoints by clicking the left margin in VSCode
2. Press `F5` to start debugging
3. Use the debug toolbar to:
   - Continue (`F5`)
   - Step Over (`F10`)
   - Step Into (`F11`)
   - Step Out (`Shift + F11`)

## Customization

### Changing C++ Standard

Modify in `CMakeLists.txt`:
```cmake
set(CMAKE_CXX_STANDARD 20)  # Change to desired version
```

### Adding Dependencies

Add to `.devcontainer/Dockerfile`:
```dockerfile
RUN apt-get update && apt-get install -y \
    your-package-name
```

## Troubleshooting

### Common Issues

1. **CMake Configuration Failed**
   - Delete the build directory
   - Rebuild the container
   - Run CMake configure again

2. **Debugger Not Working**
   - Ensure GDB is installed in the container
   - Check launch.json configuration
   - Verify debug symbols are enabled

3. **Tests Not Found**
   - Check if Google Test is properly linked
   - Verify test discovery in CMakeLists.txt
   - Run ctest manually to see detailed output

## Related Resources

- [Google Test Documentation](https://google.github.io/googletest/)
- [CMake Documentation](https://cmake.org/documentation/)
- [VSCode C++ Documentation](https://code.visualstudio.com/docs/languages/cpp)
- [Dev Containers Documentation](https://code.visualstudio.com/docs/remote/containers)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.

## Acknowledgments

- [Google Test](https://github.com/google/googletest) framework
- [VSCode Dev Containers](https://github.com/microsoft/vscode-dev-containers) team
- [CMake](https://cmake.org/) community