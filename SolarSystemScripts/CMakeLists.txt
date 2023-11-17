cmake_minimum_required(VERSION 3.5)
project(SolarSystem LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find and link GLFW
find_package(glfw3 REQUIRED)

# Find and link GLEW
find_package(GLEW REQUIRED)

# Add your source files
add_executable(SolarSystem main.cpp
                camera.h camera.cpp
                stb_image.cpp stb_image.h
                renderer.h renderer.cpp
                vertexarray.h vertexarray.cpp
                vertexbuffer.h vertexbuffer.cpp
                shader.h shader.cpp
                object.h object.cpp
                uvbuffer.h uvbuffer.cpp
                texture.h texture.cpp
                controls.h controls.cpp
                navigationcontrols.h navigationcontrols.cpp
                fpscontrols.h fpscontrols.cpp
                planete.h planete.cpp
                pointLight.h pointLight.cpp
              )

# Link OpenGL libraries
target_link_libraries(SolarSystem PRIVATE glfw GLEW::GLEW ${OPENGL_gl_LIBRARY})


# Set working directory for the generated binary
set_target_properties(SolarSystem PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})



###### A voir pour l'interface user

# add_subdirectory(/Users/ClaireGirardin/vcpkg)
# target_link_libraries(SolarSystem PRIVATE imgui)
# target_include_directories(SolarSystem PRIVATE /Users/ClaireGirardin/vcpkg)









########################################################################################################################

### Version LINUX

#cmake_minimum_required(VERSION 3.5)
#project(SolarSystem LANGUAGES CXX)

#set(CMAKE_CXX_STANDARD 11)
#set(CMAKE_CXX_STANDARD_REQUIRED ON)

## Add your source files
#add_executable(SolarSystem main.cpp
#                camera.h camera.cpp
#                stb_image.cpp stb_image.h
#                renderer.h renderer.cpp
#                vertexarray.h vertexarray.cpp
#                vertexbuffer.h vertexbuffer.cpp
#                shader.h shader.cpp
#                object.h object.cpp
#                uvbuffer.h uvbuffer.cpp
#                texture.h texture.cpp
#                controls.h controls.cpp
#                navigationcontrols.h navigationcontrols.cpp
#                fpscontrols.h fpscontrols.cpp
#                planete.h planete.cpp
#              )


#target_link_libraries(SolarSystem glfw GLEW libGLEW.so libGLU.so libGL.so)


