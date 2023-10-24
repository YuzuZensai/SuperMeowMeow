cmake_minimum_required(VERSION 3.0)
project(my_raylib_game C)
set(CMAKE_C_STANDARD 99)

# Adding Raylib
include(FetchContent)
set(FETCHCONTENT_QUIET FALSE)
set(BUILD_EXAMPLES OFF CACHE BOOL "" FORCE) # don't build the supplied examples
set(BUILD_GAMES    OFF CACHE BOOL "" FORCE) # don't build the supplied example games

FetchContent_Declare(
    raylib
    GIT_REPOSITORY "https://github.com/raysan5/raylib.git"
    GIT_TAG "master"
    GIT_PROGRESS TRUE
)

FetchContent_MakeAvailable(raylib)

# Adding our source files
file(GLOB_RECURSE PROJECT_SOURCES CONFIGURE_DEPENDS "${CMAKE_CURRENT_LIST_DIR}/sources/*.c") # Define PROJECT_SOURCES as a list of all source files
set(PROJECT_INCLUDE "${CMAKE_CURRENT_LIST_DIR}/sources/") # Define PROJECT_INCLUDE to be the path to the include directory of the project

# Declaring our executable
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCES})
target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_INCLUDE})

if (${CMAKE_SYSTEM_PROCESSOR} STREQUAL "armv7l" AND ${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    target_link_libraries(${PROJECT_NAME} PRIVATE raylib atomic ${EXTRA_LIBS}) # Link with raylib and any extra libraries
else()
    target_link_libraries(${PROJECT_NAME} PRIVATE raylib ${EXTRA_LIBS}) 
endif()
# Setting ASSETS_PATH
target_compile_definitions(${PROJECT_NAME} PUBLIC ASSETS_PATH="${CMAKE_CURRENT_SOURCE_DIR}/assets/") # Set the asset path macro to the absolute path on the dev machine
#target_compile_definitions(${PROJECT_NAME} PUBLIC ASSETS_PATH="./assets") # Set the asset path macro in release mode to a relative path that assumes the assets folder is in the same directory as the game executable

# Print CMAKE_C_COMPILER_ID
message(STATUS "CMAKE_C_COMPILER_ID: ${CMAKE_C_COMPILER_ID}")

# Configure compiler and linker options based on the compiler
if (("${CMAKE_C_COMPILER_ID}" STREQUAL  "GNU")  OR (${CLANG}))
    # Using GCC, add the required linker options
    # target_link_options(${PROJECT_NAME} PRIVATE "-Wl,--subsystem,windows")
    # If you need additional compiler flags for GCC, you can set them here.
elseif ("${CMAKE_C_COMPILER_ID}" STREQUAL  "MSVC")
    # Using MSVC (Visual Studio), add the required linker options
     target_link_options(${PROJECT_NAME} PRIVATE "/SUBSYSTEM:windows" "/ENTRY:mainCRTStartup")
    # If you need additional compiler flags for MSVC, you can set them here.
endif()

# Check if we are compiling for ARM32 and Linux
if (${CMAKE_SYSTEM_PROCESSOR} STREQUAL "armv7l" AND ${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
    set(EXTRA_LIBS "-latomic") # Link the libatomic library with -latomic flag
    target_compile_definitions(${PROJECT_NAME} PUBLIC ) # Set GLSL version to 330
    target_compile_definitions(${PROJECT_NAME} PUBLIC ) # Set GL version to 3.3
endif()
