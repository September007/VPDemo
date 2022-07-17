# https://blog.csdn.net/qq_41961619/article/details/106288798
cmake_minimum_required(VERSION 3.8)

project(VPDemo)

#set dll output path for linking ,just in case of windows
set(LIBRARY_OUTPUT_PATH "${CMAKE_BINARY_DIR}")
set(EXECUTABLE_OUTPUT_PATH "${CMAKE_BINARY_DIR}")

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(util)
include(env)

#set path for QT
set(CMAKE_PREFIX_PATH ${QT_KIT_PATH})

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed
set(CMAKE_AUTOMOC ON)
# Create code from a list of Qt designer ui files
set(CMAKE_AUTOUIC ON)

find_package(Qt5 REQUIRED COMPONENTS Core Widgets Gui)

# copy launch.vs.json to .vs
if(IS_DIRECTORY ".vs")
	remove(.vs/launch.vs.json)
	file(COPY "launch.vs.json" DESTINATION ".vs")
endif()
add_subdirectory(VideoPlayer)
