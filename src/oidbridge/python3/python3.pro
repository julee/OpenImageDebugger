include($$PWD/../oidbridge.pri)

!win32 {
  PKGCONFIG += python3
  message(OpenImageDebugger Python3 Bridge build mode: $$BUILD_MODE)
}

win32:LIBS += -L$$PWD/../../thirdparty/Python/Win-x64/lib -lpython38
win32:INCLUDEPATH += $$PWD/../../thirdparty/Python/Win-x64/include/python3.8

TARGET = oidbridge_python3
target.path = $$BRIDGE_INSTALL_FOLDER

INSTALLS += \
  target
