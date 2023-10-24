export MESA_GLSL_VERSION_OVERRIDE=330
export MESA_GL_VERSION_OVERRIDE=3.3
sudo apt install xorg-dev -y

cmake -S . -B build
cd Build
make
