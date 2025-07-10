cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)

# 创建静态库 (C代码)
add_library(c_operations STATIC 
    src/c_files/add.c 
    src/c_files/subtract.c
    src/c_files/color.c
    src/c_files/calc/c
)

# 创建动态库 (C++代码)
add_library(cpp_operations SHARED 
    src/cpp_files/multiply.cpp 
    src/cpp_files/divide.cpp
)

# 创建可执行文件
add_executable(calculator src/cpp_files/main.cpp)

# 链接库
target_link_libraries(calculator c_operations cpp_operations)

# 包含目录
target_include_directories(calculator PRIVATE include)
target_include_directories(c_operations PRIVATE include)
target_include_directories(cpp_operations PRIVATE include)