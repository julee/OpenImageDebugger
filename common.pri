# BUILD_MODE variable can be either release or debug
isEmpty(BUILD_MODE) {
  BUILD_MODE = release
}

# Instalation instructions
isEmpty(PREFIX) {
  PREFIX = /usr/local
}

!win32 {
  QMAKE_CXXFLAGS += \
    -fPIC \
    -fvisibility=hidden \
    -pthread
}

QMAKE_CXXFLAGS += -DNOMINMAX -D_ENABLE_EXTENDED_ALIGNED_STORAGE -D_USE_MATH_DEFINES 

CONFIG += $$BUILD_MODE

# Prevent strip from producing spurious error messages
QMAKE_STRIP = echo "strip disabled: "

CONFIG += \
  link_pkgconfig \
  warn_on \
  c++11 \
  no_keywords \

QT += \
  network

VERSION = 2.0
