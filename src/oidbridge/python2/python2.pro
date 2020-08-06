include($$PWD/../oidbridge.pri)

!win32 {
  # On MacOS, run the following before qmake:
  # export PKG_CONFIG_PATH=/System/Library/Frameworks/Python.framework/Versions/2.7/lib/pkgconfig/
  PKGCONFIG += python2
}

message(OpenImageDebugger Bridge build mode: $$BUILD_MODE)

win32:LIBS += -L$$PWD/../../thirdparty/Python/Win-x64/lib -lpython27
win32:INCLUDEPATH += $$PWD/../../thirdparty/Python/Win-x64/include/python2.7

TARGET = oidbridge_python2
target.path = $$BRIDGE_INSTALL_FOLDER

INSTALLS += \
  target \
  $$SCRIPT_INSTALLS
