include(_common.pri)

TEMPLATE = lib
CONFIG  += plugin


equals(NAME,""){
	NAME=$$upper($$TARGET)
}

equals(LICENSE,""){
	LICENSE="GNU GPLv2+"
}

equals(SRC,""){
	SRC = $$STEL/plugins/$$TARGET
}


android{
        TARGET = module_$$TARGET
}else{
        DESTDIR = $$DESTDIR/modules/$$TARGET
}

android{
LIBS += -lMain_armeabi-v7a
}
windows{
LIBS += -lMain
}

DEFINES += \
	$${NAME}_MAJOR=$${MAJOR} \
	$${NAME}_MINOR=$${MINOR} \
	$${NAME}_PATCH=$${PATCH} \
	$${NAME}_PLUGIN_VERSION=\\\"$${MAJOR}.$${MINOR}.$${PATCH}\\\" \
	$${NAME}_PLUGIN_LICENSE=\"\\\"$${LICENSE}\\\"\"


exists($$SRC/src){
	INCLUDEPATH += \
		$$SRC/src
}

exists($$SRC/src/gui){
	INCLUDEPATH += \
		$$SRC/src/gui
}

SOURCES += \
	$$files( $$SRC/*.c   , true ) \
	$$files( $$SRC/*.cpp , true )
	
HEADERS += \
	$$files( $$SRC/*.h   , true ) \
	$$files( $$SRC/*.hpp , true )

FORMS += \
	$$files( $$SRC/*.ui , true )
	
RESOURCES += \
	$$files( $$SRC/*.qrc , true )
