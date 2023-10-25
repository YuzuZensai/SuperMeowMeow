export MESA_GLSL_VERSION_OVERRIDE=330
export MESA_GL_VERSION_OVERRIDE=3.3
export PLATFORM=PLATFORM_DESKTOP
export GRAPHICS=GRAPHICS_API_OPENGL_21
# sudo apt install xorg-dev -y

cmake -S . -B build
cd build
rm -rf my_raylib_game
rm -rf CMakeFiles/my_raylib_game.dir/sources/*.o
make
./my_raylib_game
