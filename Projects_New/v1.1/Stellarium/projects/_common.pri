include(../_config.pri)
include(../_version.pri)

CONFIG  += c++11

QT += \
	core \
	gui \
	widgets \
	concurrent \
	script \
	multimedia \
	multimediawidgets \
	positioning \
	serialport \
	printsupport \
	network \
	opengl \
        sensors


INCLUDEPATH += \
	$$STEL/src \
	$$STEL/src/core \
	$$STEL/src/core/modules \
	$$STEL/src/core/planetsephems \
	$$STEL/src/gui \
	$$STEL/src/scripting \
	$$STEL/src/external/glues_stel/source \
	$$STEL/src/external/qtcompress \
	$$STEL/src/external/zlib


LIBS += -L$$DESTDIR


windows{
	DEFINES += _USE_MATH_DEFINES NOMINMAX _WINDOWS
	LIBS    += -lWinmm
}


android {
        !equals(ANDROID_PLATFORM,"android-21"){
                error("Requires android-21 platform to work!")
	}
	
	DEFINES += \
                __ANDROID_API__=$$replace(ANDROID_PLATFORM,"android-","")
}

#INCLUDEPATH += \
	#C:/Dev/Android/sdk/ndk-bundle/sysroot/usr/include \
	#C:/Dev/Android/sdk/ndk-bundle/sysroot/usr/include/arm-linux-androideabi

