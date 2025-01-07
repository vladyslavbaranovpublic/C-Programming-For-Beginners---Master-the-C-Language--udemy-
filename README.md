# Learn C Project based on "C Programming For Beginners - Master the C Language" by Tim Buchalka's Learn Programming Academy at Udemy.com

Welcome to the Learn C project! This repository is designed to help you practice and understand C programming by providing a setup for compiling and running C code using both Microsoft Visual Studio Build Tools and MinGW's g++ compiler. It also includes scripts for cleaning the build directory.

## Requirements

Before running the scripts, make sure the following software is installed on your system:

### Microsoft Visual Studio Build Tools (for MSVC)
- Download from [Visual Studio](https://visualstudio.microsoft.com/visual-cpp-build-tools/).
- Install the C++ Build Tools workload.
- Cygwin for certain tools (TODO: WILL UPDATE DEPENDENCIES LATER)

### MinGW (for g++)
- Download and install MinGW from [MinGW-W64](https://www.mingw-w64.org/).
- Add the MinGW `bin` directory to your system's `PATH`.

## How to Use

### Compile with MSVC
Run the `build_cl.bat` script from the "build" folder.

### Compile with g++
Run the `build_gpp.bat` script from the "build" folder.

### Cleaning Process
Run the `clean.bat` script from the "build" folder.

Notes
Debugging: Both compilers are set to include debug information (/Zi for MSVC, -g for g++).
Warnings: The g++ script includes the -Wall flag to show all warnings during compilation.
Modify the batch scripts as needed for your specific setup or requirements.

License
This project is for educational purposes only. You are free to use and modify it to fit your learning goals.
