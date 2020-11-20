NAME =TELESCOPE_CONTROL
MAJOR=0
MINOR=3
PATCH=1

include(_plugin.pri)

INCLUDEPATH += \
        $$SRC/src/ASCOM   \
        $$SRC/src/INDI    \
        $$SRC/src/Lx200   \
        $$SRC/src/NexStar \
        $$SRC/src/Rts2

SOURCES -= \
        $$files( $$SRC/src/INDI/test/*.cpp ) \
        $$files( $$SRC/src/ASCOM/test/*.cpp ) \
        $$files( $$SRC/src/ASCOM/*.cpp ) \

HEADERS -= \
        $$files( $$SRC/src/INDI/test/*.hpp ) \
        $$files( $$SRC/src/ASCOM/test/*.hpp ) \
        $$files( $$SRC/src/ASCOM/*.hpp ) \
	
QMAKE_CFLAGS += -std=c99

DEFINES += \
	DATA_INSTALL_DIR=\\\".\\\"

INCLUDEPATH += \
	$$STEL/src/external/libindi \
	$$STEL/src/external/libindi/libs \
	$$STEL/src/external/libindi/libs/indibase \
	$$_PRO_FILE_PWD_/../src

SOURCES += \
	$$STEL/src/external/libindi/libs/lilxml.c \
	$$STEL/src/external/libindi/base64.c \
	$$STEL/src/external/libindi/libs/indibase/basedevice.cpp \
	$$STEL/src/external/libindi/libs/indibase/baseclient.cpp \
	$$STEL/src/external/libindi/libs/indibase/baseclientqt.cpp \
	$$STEL/src/external/libindi/libs/indibase/indiproperty.cpp \
	$$STEL/src/external/libindi/libs/indibase/indistandardproperty.cpp \
	$$STEL/src/external/libindi/libs/indicom.c


HEADERS += \
	$$STEL/src/external/libindi/libs/lilxml.h \
	$$STEL/src/external/libindi/base64.h \
	$$STEL/src/external/libindi/libs/indibase/basedevice.h \
	$$STEL/src/external/libindi/libs/indibase/baseclient.h \
	$$STEL/src/external/libindi/libs/indibase/baseclientqt.h \
	$$STEL/src/external/libindi/libs/indibase/indiproperty.h \
	$$STEL/src/external/libindi/libs/indibase/indistandardproperty.h \
	$$STEL/src/external/libindi/libs/indicom.h

windows{
	LIBS += -lWs2_32
}
