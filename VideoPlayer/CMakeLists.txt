
project(VideoPlayer)

include_directories(${QT_KIT_PATH}/include)
list(APPEND CMAKE_INSTALL_RPATH "${QT_KIT_PATH}/bin")
set(project_ui
#	MainWindow.ui
    )

set(project_headers
#	MainWindow.h
    )

set(project_sources
	Main.cpp
 #   MainWindow.cpp
    )

add_executable(${PROJECT_NAME} ${project_headers} ${project_ui} ${project_sources})

# Use the widgets module from Qt 5
target_link_libraries(${PROJECT_NAME}
	PUBLIC
	Qt5::Core
	Qt5::Gui
	Qt5::Widgets)
    
