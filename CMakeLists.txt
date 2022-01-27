cmake_minimum_required(VERSION 3.14)

# set(glfw_ROOT "P:/Downloads/cpp-libraries/glfw-3.3.6.bin.WIN64")
# set(glad2_ROOT "P:/Downloads/cpp-libraries/glad2-web-generated")

project(sfml-boilerplate)

set(BUILD_SHARED_LIBS FALSE)
# set(SFML_BUILD_AUDIO FALSE)
# set(SFML_BUILD_DOC FALSE)
# set(SFML_BUILD_EXAMPLES FALSE)
# set(SFML_BUILD_GRAPHICS TRUE)
# set(SFML_BUILD_NETWORK FALSE)
# set(SFML_BUILD_TEST_SUITE FALSE)
# set(SFML_BUILD_WINDOW TRUE)
# set(SFML_INSTALL_PKGCONFIG_FILES FALSE)
# set(SFML_USE_STATIC_STD_LIBS FALSE)
set(SFML_USE_SYSTEM_DEPS FALSE)
set(SFML_STATIC_LIBRARIES TRUE)

# find_package(OpenGL REQUIRED)
# if (OPENGL_FOUND)
#     message("opengl found")
#     message("include dir: ${OPENGL_INCLUDE_DIR}")
#     message("link libraries: ${OPENGL_gl_LIBRARY}")
# else (OPENGL_FOUND)
#     message("opengl not found")
# endif()

# include_directories("${glad2_ROOT}/include" "${glfw_ROOT}/include")

# set(OPENGL_INCLUDE_DIR "${glad2_ROOT}/include")

# find_package(SFML 3 COMPONENTS Graphics Window System REQUIRED PATHS "SFML-prebuilt/build/sfml/lib/cmake/SFML")
# find_package(SFML 2.5.0 COMPONENTS Graphics Window System REQUIRED PATHS "P:\\Downloads\\cpp-libraries\\SFML\\build")

find_package(SFML 2.5.1 COMPONENTS system window graphics REQUIRED PATHS 
    "sfml-v2.5.1-mingw/SFML/build/sfml/lib/cmake/SFML"
)

# uncomment this line if using msvc
# SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /subsystem:windows /ENTRY:mainCRTStartup")

# uncomment this line if using clang
SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static -Wl,--subsystem,windows")

# link_directories(SFML_LIBRARY_DIR)
# link_directories(SFML_INCLUDE_DIR)

add_executable(${PROJECT_NAME} 
    "src/main.cpp"
)

target_link_libraries(${PROJECT_NAME} sfml-graphics)
# target_link_libraries(ColorPicker PRIVATE ${OPENGL_gl_LIBRARY} SFML::WINDOW SFML::Graphics SFML::System)