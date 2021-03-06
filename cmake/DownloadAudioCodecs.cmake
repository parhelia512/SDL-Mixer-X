
# This file downloads, configures and build AudioCodecs dependencies package.
#
# Output Variables:
# AUDIO_CODECS_INSTALL_DIR      The install directory
# AUDIO_CODECS_REPOSITORY_PATH  The reposotory directory

# Require ExternalProject and GIT!
include(ExternalProject)
find_package(Git REQUIRED)

# Posttible Input Vars:
# <None>

# SET OUTPUT VARS
#set(AUDIO_CODECS_INSTALL_DIR ${CMAKE_BINARY_DIR}/external/install)
set(AUDIO_CODECS_INSTALL_DIR ${CMAKE_INSTALL_PREFIX})
set(AUDIO_CODECS_REPOSITORY_PATH ${AUDIO_CODECS_INSTALL_DIR})

ExternalProject_Add(
    AudioCodecs
    PREFIX ${CMAKE_BINARY_DIR}/external/AudioCodecs
    GIT_REPOSITORY https://github.com/WohlSoft/AudioCodecs.git
    CMAKE_ARGS "-DCMAKE_INSTALL_PREFIX=${AUDIO_CODECS_INSTALL_DIR}" "-DDOWNLOAD_SDL2_DEPENDENCY=ON"
)

message("AudioCodecs can see SDL2 is stored in ${SDL2_REPO_PATH}...")
