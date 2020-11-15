MAJOR=0
MINOR=0
PATCH=3

include(_plugin.pri)

DEFINES += \
	REMOTECONTROL_WEBROOT_PATH=\\\"./webroot/\\\"

INCLUDEPATH += \
	$$SRC/include \
	$$SRC/src/qtwebapp