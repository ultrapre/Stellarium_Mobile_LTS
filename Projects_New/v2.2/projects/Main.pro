include(_common.pri)

TEMPLATE = lib

DEFINES += \
	ENABLE_GPS \
	ENABLE_MEDIA \
	ENABLE_NLS \
	ENABLE_SCRIPT_CONSOLE \
	INSTALL_DATADIR=\\\".\\\" \
	INSTALL_DATADIR_FOR_DEBUG=\\\".\\\"

FORMS += \
	$$STEL/src/gui/addRemoveLandscapesDialog.ui \
	$$STEL/src/gui/astroCalcDialog.ui \
	$$STEL/src/gui/atmosphereDialog.ui \
	$$STEL/src/gui/bookmarksDialog.ui \
	$$STEL/src/gui/configurationDialog.ui \
	$$STEL/src/gui/customDeltaTEquationDialog.ui \
	$$STEL/src/gui/dateTimeDialogGui.ui \
	$$STEL/src/gui/dsoColorsDialog.ui \
	$$STEL/src/gui/greatRedSpotDialog.ui \
	$$STEL/src/gui/helpDialogGui.ui \
	$$STEL/src/gui/locationDialogGui.ui \
	$$STEL/src/gui/orbitColorsDialog.ui \
	$$STEL/src/gui/scriptConsole.ui \
	$$STEL/src/gui/searchDialogGui.ui \
	$$STEL/src/gui/shortcutsDialog.ui \
	$$STEL/src/gui/viewDialog.ui \

if(contains(BUILD_VER_TRUNK,203)){
        FORMS += \
        $$STEL/src/gui/astroCalcCustomStepsDialog.ui \
        $$STEL/src/gui/astroCalcExtraEphemerisDialog.ui
}

HEADERS += \
	$$STEL/src/external/qcustomplot/qcustomplot.h \
	$$STEL/src/gui/AddRemoveLandscapesDialog.hpp \
	$$STEL/src/gui/AngleSpinBox.hpp \
	$$STEL/src/gui/AstroCalcDialog.hpp \
	$$STEL/src/gui/AtmosphereDialog.hpp \
	$$STEL/src/gui/BookmarksDialog.hpp \
	$$STEL/src/gui/ConfigurationDialog.hpp \
	$$STEL/src/gui/ConfigureDSOColorsDialog.hpp \
	$$STEL/src/gui/ConfigureOrbitColorsDialog.hpp \
	$$STEL/src/gui/CustomDeltaTEquationDialog.hpp \
	$$STEL/src/gui/DateTimeDialog.hpp \
	$$STEL/src/gui/Dialog.hpp \
	$$STEL/src/gui/GreatRedSpotDialog.hpp \
	$$STEL/src/gui/HelpDialog.hpp \
	$$STEL/src/gui/LocationDialog.hpp \
	$$STEL/src/gui/MapLabel.hpp \
	$$STEL/src/gui/ScriptConsole.hpp \
	$$STEL/src/gui/SearchDialog.hpp \
	$$STEL/src/gui/ShortcutLineEdit.hpp \
	$$STEL/src/gui/ShortcutsDialog.hpp \
	$$STEL/src/gui/SkyGui.hpp \
	$$STEL/src/gui/StelDialog.hpp \
	$$STEL/src/gui/StelDialog_p.hpp \
	$$STEL/src/gui/StelGui.hpp \
	$$STEL/src/gui/StelGuiItems.hpp \
	$$STEL/src/gui/StelScriptSyntaxHighlighter.hpp \
	$$STEL/src/gui/ViewDialog.hpp \
	$$STEL/src/core/modules/AsterismMgr.hpp \
	$$STEL/src/core/modules/ConstellationMgr.hpp \
	$$STEL/src/core/modules/CustomObjectMgr.hpp \
	$$STEL/src/core/modules/GridLinesMgr.hpp \
	$$STEL/src/core/modules/HipsMgr.hpp \
	$$STEL/src/core/modules/LabelMgr.hpp \
	$$STEL/src/core/modules/LandscapeMgr.hpp \
	$$STEL/src/core/modules/MilkyWay.hpp \
	$$STEL/src/core/modules/Nebula.hpp \
	$$STEL/src/core/modules/NebulaMgr.hpp \
	$$STEL/src/core/modules/NomenclatureMgr.hpp \
	$$STEL/src/core/modules/SolarSystem.hpp \
	$$STEL/src/core/modules/SporadicMeteorMgr.hpp \
	$$STEL/src/core/modules/StarMgr.hpp \
	$$STEL/src/core/modules/ToastMgr.hpp \
	$$STEL/src/core/modules/ZodiacalLight.hpp \
	$$STEL/src/core/MultiLevelJsonBase.hpp \
	$$STEL/src/core/SimbadSearcher.hpp \
	$$STEL/src/scripting/ScreenImageMgr.hpp \
	$$STEL/src/scripting/StelScriptMgr.hpp \
	$$STEL/src/core/StelActionMgr.hpp \
	$$STEL/src/core/StelApp.hpp \
	$$STEL/src/core/StelAudioMgr.hpp \
	$$STEL/src/core/StelCore.hpp \
	$$STEL/src/core/StelHips.hpp \
	$$STEL/src/core/StelLocationMgr.hpp \
	$$STEL/src/core/StelLocationMgr_p.hpp \
	$$STEL/src/scripting/StelMainScriptAPI.hpp \
	$$STEL/src/scripting/StelMainScriptAPIProxy.hpp \
	$$STEL/src/StelMainView.hpp \
	$$STEL/src/core/StelModule.hpp \
	$$STEL/src/core/StelModuleMgr.hpp \
	$$STEL/src/core/StelMovementMgr.hpp \
	$$STEL/src/core/StelObject.hpp \
	$$STEL/src/core/StelObjectMgr.hpp \
	$$STEL/src/core/StelObjectModule.hpp \
	$$STEL/src/core/StelObserver.hpp \
	$$STEL/src/core/StelProgressController.hpp \
	$$STEL/src/core/StelPropertyMgr.hpp \
	$$STEL/src/core/StelRegionObject.hpp \
	$$STEL/src/core/StelSkyCultureMgr.hpp \
	$$STEL/src/core/StelSkyDrawer.hpp \
	$$STEL/src/core/StelSkyImageTile.hpp \
	$$STEL/src/core/StelSkyLayer.hpp \
	$$STEL/src/core/StelSkyLayerMgr.hpp \
	$$STEL/src/core/StelSkyPolygon.hpp \
	$$STEL/src/core/StelTexture.hpp \
	$$STEL/src/core/StelTextureMgr.hpp \
	$$STEL/src/core/StelToast.hpp \
        $$STEL/src/core/StelVideoMgr.hpp

if(contains(BUILD_VER_TRUNK,182)){
    HEADERS += \
        $$STEL/src/core/SaturationShader.hpp
}

if(contains(BUILD_VER_TRUNK,203)){
    HEADERS += \
    $$STEL/src/StelSplashScreen.hpp \
    $$STEL/src/core/modules/HighlightMgr.hpp \
    $$STEL/src/core/modules/MarkerMgr.hpp \
    $$STEL/src/core/modules/NebulaList.hpp \
    $$STEL/src/core/modules/SpecialMarkersMgr.hpp \
    $$STEL/src/external/qxlsx/xlsxabstractooxmlfile.h \
    $$STEL/src/external/qxlsx/xlsxabstractooxmlfile_p.h \
    $$STEL/src/external/qxlsx/xlsxabstractsheet.h \
    $$STEL/src/external/qxlsx/xlsxabstractsheet_p.h \
    $$STEL/src/external/qxlsx/xlsxcell.h \
    $$STEL/src/external/qxlsx/xlsxcell_p.h \
    $$STEL/src/external/qxlsx/xlsxcellformula.h \
    $$STEL/src/external/qxlsx/xlsxcellformula_p.h \
    $$STEL/src/external/qxlsx/xlsxcelllocation.h \
    $$STEL/src/external/qxlsx/xlsxcellrange.h \
    $$STEL/src/external/qxlsx/xlsxcellreference.h \
    $$STEL/src/external/qxlsx/xlsxchart.h \
    $$STEL/src/external/qxlsx/xlsxchart_p.h \
    $$STEL/src/external/qxlsx/xlsxchartsheet.h \
    $$STEL/src/external/qxlsx/xlsxchartsheet_p.h \
    $$STEL/src/external/qxlsx/xlsxcolor_p.h \
    $$STEL/src/external/qxlsx/xlsxconditionalformatting.h \
    $$STEL/src/external/qxlsx/xlsxconditionalformatting_p.h \
    $$STEL/src/external/qxlsx/xlsxcontenttypes_p.h \
    $$STEL/src/external/qxlsx/xlsxdatavalidation.h \
    $$STEL/src/external/qxlsx/xlsxdatavalidation_p.h \
    $$STEL/src/external/qxlsx/xlsxdocpropsapp_p.h \
    $$STEL/src/external/qxlsx/xlsxdocpropscore_p.h \
    $$STEL/src/external/qxlsx/xlsxdocument.h \
    $$STEL/src/external/qxlsx/xlsxdocument_p.h \
    $$STEL/src/external/qxlsx/xlsxdrawing_p.h \
    $$STEL/src/external/qxlsx/xlsxdrawinganchor_p.h \
    $$STEL/src/external/qxlsx/xlsxformat.h \
    $$STEL/src/external/qxlsx/xlsxformat_p.h \
    $$STEL/src/external/qxlsx/xlsxglobal.h \
    $$STEL/src/external/qxlsx/xlsxmediafile_p.h \
    $$STEL/src/external/qxlsx/xlsxnumformatparser_p.h \
    $$STEL/src/external/qxlsx/xlsxrelationships_p.h \
    $$STEL/src/external/qxlsx/xlsxrichstring.h \
    $$STEL/src/external/qxlsx/xlsxrichstring_p.h \
    $$STEL/src/external/qxlsx/xlsxsharedstrings_p.h \
    $$STEL/src/external/qxlsx/xlsxsimpleooxmlfile_p.h \
    $$STEL/src/external/qxlsx/xlsxstyles_p.h \
    $$STEL/src/external/qxlsx/xlsxtheme_p.h \
    $$STEL/src/external/qxlsx/xlsxutility_p.h \
    $$STEL/src/external/qxlsx/xlsxworkbook.h \
    $$STEL/src/external/qxlsx/xlsxworkbook_p.h \
    $$STEL/src/external/qxlsx/xlsxworksheet.h \
    $$STEL/src/external/qxlsx/xlsxworksheet_p.h \
    $$STEL/src/external/qxlsx/xlsxzipreader_p.h \
    $$STEL/src/external/qxlsx/xlsxzipwriter_p.h \
    $$STEL/src/gui/AstroCalcCustomStepsDialog.hpp \
    $$STEL/src/gui/AstroCalcExtraEphemerisDialog.hpp
}

SOURCES += \
	$$STEL/src/CLIProcessor.cpp \
	$$STEL/src/StelLogger.cpp \
	$$STEL/src/StelMainView.cpp \
	$$STEL/src/core/GeomMath.cpp \
	$$STEL/src/core/MultiLevelJsonBase.cpp \
	$$STEL/src/core/OctahedronPolygon.cpp \
	$$STEL/src/core/RefractionExtinction.cpp \
	$$STEL/src/core/SimbadSearcher.cpp \
	$$STEL/src/core/SphericMirrorCalculator.cpp \
	$$STEL/src/core/StelActionMgr.cpp \
	$$STEL/src/core/StelApp.cpp \
	$$STEL/src/core/StelAudioMgr.cpp \
	$$STEL/src/core/StelCore.cpp \
	$$STEL/src/core/StelFileMgr.cpp \
	$$STEL/src/core/StelGeodesicGrid.cpp \
	$$STEL/src/core/StelGuiBase.cpp \
	$$STEL/src/core/StelHips.cpp \
	$$STEL/src/core/StelIniParser.cpp \
	$$STEL/src/core/StelJsonParser.cpp \
	$$STEL/src/core/StelLocaleMgr.cpp \
	$$STEL/src/core/StelLocation.cpp \
	$$STEL/src/core/StelLocationMgr.cpp \
	$$STEL/src/core/StelModule.cpp \
	$$STEL/src/core/StelModuleMgr.cpp \
	$$STEL/src/core/StelMovementMgr.cpp \
	$$STEL/src/core/StelOBJ.cpp \
	$$STEL/src/core/StelObject.cpp \
	$$STEL/src/core/StelObjectMgr.cpp \
	$$STEL/src/core/StelObjectModule.cpp \
	$$STEL/src/core/StelObserver.cpp \
	$$STEL/src/core/StelOpenGL.cpp \
	$$STEL/src/core/StelOpenGLArray.cpp \
	$$STEL/src/core/StelPainter.cpp \
	$$STEL/src/core/StelProjector.cpp \
	$$STEL/src/core/StelProjectorClasses.cpp \
	$$STEL/src/core/StelPropertyMgr.cpp \
	$$STEL/src/core/StelSkyCultureMgr.cpp \
	$$STEL/src/core/StelSkyDrawer.cpp \
	$$STEL/src/core/StelSkyImageTile.cpp \
	$$STEL/src/core/StelSkyLayer.cpp \
	$$STEL/src/core/StelSkyLayerMgr.cpp \
	$$STEL/src/core/StelSkyPolygon.cpp \
	$$STEL/src/core/StelSphereGeometry.cpp \
	$$STEL/src/core/StelSphericalIndex.cpp \
	$$STEL/src/core/StelTexture.cpp \
	$$STEL/src/core/StelTextureMgr.cpp \
	$$STEL/src/core/StelToast.cpp \
	$$STEL/src/core/StelToastGrid.cpp \
	$$STEL/src/core/StelToneReproducer.cpp \
	$$STEL/src/core/StelTranslator.cpp \
	$$STEL/src/core/StelUtils.cpp \
	$$STEL/src/core/StelVertexArray.cpp \
	$$STEL/src/core/StelVideoMgr.cpp \
	$$STEL/src/core/StelViewportEffect.cpp \
	$$STEL/src/core/TrailGroup.cpp \
	$$STEL/src/core/healpix.c \
	$$STEL/src/core/modules/Asterism.cpp \
	$$STEL/src/core/modules/AsterismMgr.cpp \
	$$STEL/src/core/modules/Atmosphere.cpp \
	$$STEL/src/core/modules/Comet.cpp \
	$$STEL/src/core/modules/Constellation.cpp \
	$$STEL/src/core/modules/ConstellationMgr.cpp \
	$$STEL/src/core/modules/CustomObject.cpp \
	$$STEL/src/core/modules/CustomObjectMgr.cpp \
	$$STEL/src/core/modules/GridLinesMgr.cpp \
	$$STEL/src/core/modules/HipsMgr.cpp \
	$$STEL/src/core/modules/LabelMgr.cpp \
	$$STEL/src/core/modules/Landscape.cpp \
	$$STEL/src/core/modules/LandscapeMgr.cpp \
	$$STEL/src/core/modules/Meteor.cpp \
	$$STEL/src/core/modules/MilkyWay.cpp \
	$$STEL/src/core/modules/MinorPlanet.cpp \
	$$STEL/src/core/modules/Nebula.cpp \
	$$STEL/src/core/modules/NebulaMgr.cpp \
	$$STEL/src/core/modules/NomenclatureItem.cpp \
	$$STEL/src/core/modules/NomenclatureMgr.cpp \
	$$STEL/src/core/modules/Orbit.cpp \
	$$STEL/src/core/modules/Planet.cpp \
	$$STEL/src/core/modules/Skybright.cpp \
	$$STEL/src/core/modules/Skylight.cpp \
	$$STEL/src/core/modules/SolarSystem.cpp \
	$$STEL/src/core/modules/SporadicMeteor.cpp \
	$$STEL/src/core/modules/SporadicMeteorMgr.cpp \
	$$STEL/src/core/modules/Star.cpp \
	$$STEL/src/core/modules/StarMgr.cpp \
	$$STEL/src/core/modules/StarWrapper.cpp \
	$$STEL/src/core/modules/ToastMgr.cpp \
	$$STEL/src/core/modules/ZodiacalLight.cpp \
	$$STEL/src/core/modules/ZoneArray.cpp \
	$$STEL/src/core/planetsephems/EphemWrapper.cpp \
	$$STEL/src/core/planetsephems/calc_interpolated_elements.c \
	$$STEL/src/core/planetsephems/de430.cpp \
	$$STEL/src/core/planetsephems/de431.cpp \
	$$STEL/src/core/planetsephems/elliptic_to_rectangular.c \
	$$STEL/src/core/planetsephems/elp82b.c \
	$$STEL/src/core/planetsephems/gust86.c \
        $$STEL/src/core/planetsephems/jpleph.cpp \
        $$STEL/src/core/planetsephems/l12.c \
	$$STEL/src/core/planetsephems/marssat.c \
	$$STEL/src/core/planetsephems/pluto.c \
	$$STEL/src/core/planetsephems/precession.c \
	$$STEL/src/core/planetsephems/sidereal_time.c \
	$$STEL/src/core/planetsephems/tass17.c \
	$$STEL/src/core/planetsephems/vsop87.c \
	$$STEL/src/external/glues_stel/source/glues_error.c \
	$$STEL/src/external/glues_stel/source/libtess/dict.c \
	$$STEL/src/external/glues_stel/source/libtess/geom.c \
	$$STEL/src/external/glues_stel/source/libtess/memalloc.c \
	$$STEL/src/external/glues_stel/source/libtess/mesh.c \
	$$STEL/src/external/glues_stel/source/libtess/normal.c \
	$$STEL/src/external/glues_stel/source/libtess/priorityq.c \
	$$STEL/src/external/glues_stel/source/libtess/render.c \
	$$STEL/src/external/glues_stel/source/libtess/sweep.c \
	$$STEL/src/external/glues_stel/source/libtess/tess.c \
	$$STEL/src/external/glues_stel/source/libtess/tessmono.c \
	$$STEL/src/external/qcustomplot/qcustomplot.cpp \
	$$STEL/src/external/qtcompress/qzip.cpp \
	$$STEL/src/external/zlib/adler32.c \
	$$STEL/src/external/zlib/compress.c \
	$$STEL/src/external/zlib/crc32.c \
	$$STEL/src/external/zlib/deflate.c \
	$$STEL/src/external/zlib/gzclose.c \
	$$STEL/src/external/zlib/gzlib.c \
	$$STEL/src/external/zlib/gzread.c \
	$$STEL/src/external/zlib/gzwrite.c \
	$$STEL/src/external/zlib/infback.c \
	$$STEL/src/external/zlib/inffast.c \
	$$STEL/src/external/zlib/inflate.c \
	$$STEL/src/external/zlib/inftrees.c \
	$$STEL/src/external/zlib/trees.c \
	$$STEL/src/external/zlib/uncompr.c \
	$$STEL/src/external/zlib/zutil.c \
	$$STEL/src/gui/AddRemoveLandscapesDialog.cpp \
	$$STEL/src/gui/AngleSpinBox.cpp \
	$$STEL/src/gui/AstroCalcDialog.cpp \
	$$STEL/src/gui/AtmosphereDialog.cpp \
	$$STEL/src/gui/BookmarksDialog.cpp \
        $$STEL/src/gui/ConfigurationDialog.cpp \
	$$STEL/src/gui/ConfigureDSOColorsDialog.cpp \
	$$STEL/src/gui/ConfigureOrbitColorsDialog.cpp \
	$$STEL/src/gui/CustomDeltaTEquationDialog.cpp \
	$$STEL/src/gui/DateTimeDialog.cpp \
	$$STEL/src/gui/Dialog.cpp \
	$$STEL/src/gui/GreatRedSpotDialog.cpp \
	$$STEL/src/gui/HelpDialog.cpp \
	$$STEL/src/gui/LocationDialog.cpp \
	$$STEL/src/gui/MapLabel.cpp \
	$$STEL/src/gui/ScriptConsole.cpp \
	$$STEL/src/gui/SearchDialog.cpp \
	$$STEL/src/gui/ShortcutLineEdit.cpp \
	$$STEL/src/gui/ShortcutsDialog.cpp \
	$$STEL/src/gui/SkyGui.cpp \
	$$STEL/src/gui/StelDialog.cpp \
	$$STEL/src/gui/StelGui.cpp \
	$$STEL/src/gui/StelGuiItems.cpp \
	$$STEL/src/gui/StelScriptSyntaxHighlighter.cpp \
	$$STEL/src/gui/ViewDialog.cpp \
	$$STEL/src/scripting/ScreenImageMgr.cpp \
	$$STEL/src/scripting/StelMainScriptAPI.cpp \
	$$STEL/src/scripting/StelMainScriptAPIProxy.cpp \
	$$STEL/src/scripting/StelScriptMgr.cpp \
	$$STEL/src/scripting/StelScriptOutput.cpp \

if(contains(BUILD_VER_TRUNK,203)){
    SOURCES += \
    $$STEL/src/StelSplashScreen.cpp \
    $$STEL/src/core/VecMath.cpp \
    $$STEL/src/core/modules/HighlightMgr.cpp \
    $$STEL/src/core/modules/MarkerMgr.cpp \
    $$STEL/src/core/modules/SpecialMarkersMgr.cpp \
    $$STEL/src/external/qxlsx/xlsxabstractooxmlfile.cpp \
    $$STEL/src/external/qxlsx/xlsxabstractsheet.cpp \
    $$STEL/src/external/qxlsx/xlsxcell.cpp \
    $$STEL/src/external/qxlsx/xlsxcellformula.cpp \
    $$STEL/src/external/qxlsx/xlsxcelllocation.cpp \
    $$STEL/src/external/qxlsx/xlsxcellrange.cpp \
    $$STEL/src/external/qxlsx/xlsxcellreference.cpp \
    $$STEL/src/external/qxlsx/xlsxchart.cpp \
    $$STEL/src/external/qxlsx/xlsxchartsheet.cpp \
    $$STEL/src/external/qxlsx/xlsxcolor.cpp \
    $$STEL/src/external/qxlsx/xlsxconditionalformatting.cpp \
    $$STEL/src/external/qxlsx/xlsxcontenttypes.cpp \
    $$STEL/src/external/qxlsx/xlsxdatavalidation.cpp \
    $$STEL/src/external/qxlsx/xlsxdocpropsapp.cpp \
    $$STEL/src/external/qxlsx/xlsxdocpropscore.cpp \
    $$STEL/src/external/qxlsx/xlsxdocument.cpp \
    $$STEL/src/external/qxlsx/xlsxdrawing.cpp \
    $$STEL/src/external/qxlsx/xlsxdrawinganchor.cpp \
    $$STEL/src/external/qxlsx/xlsxformat.cpp \
    $$STEL/src/external/qxlsx/xlsxmediafile.cpp \
    $$STEL/src/external/qxlsx/xlsxnumformatparser.cpp \
    $$STEL/src/external/qxlsx/xlsxrelationships.cpp \
    $$STEL/src/external/qxlsx/xlsxrichstring.cpp \
    $$STEL/src/external/qxlsx/xlsxsharedstrings.cpp \
    $$STEL/src/external/qxlsx/xlsxsimpleooxmlfile.cpp \
    $$STEL/src/external/qxlsx/xlsxstyles.cpp \
    $$STEL/src/external/qxlsx/xlsxtheme.cpp \
    $$STEL/src/external/qxlsx/xlsxutility.cpp \
    $$STEL/src/external/qxlsx/xlsxworkbook.cpp \
    $$STEL/src/external/qxlsx/xlsxworksheet.cpp \
    $$STEL/src/external/qxlsx/xlsxzipreader.cpp \
    $$STEL/src/external/qxlsx/xlsxzipwriter.cpp \
    $$STEL/src/gui/AstroCalcCustomStepsDialog.cpp \
    $$STEL/src/gui/AstroCalcExtraEphemerisDialog.cpp
}

RESOURCES += \
        $$STEL/data/locationsEditor.qrc \
	$$STEL/data/mainRes.qrc \
	$$STEL/data/gui/guiRes.qrc


# Compile $SRC/core/SpoutSender.cpp
# Compile $SRC/core/modules/GeodesicGridDrawer.cpp
# Compile $SRC/external/libindi/base64.c
# Compile $SRC/external/libindi/eventloop.c
# Compile $SRC/external/libindi/fq.c
# Compile $SRC/external/libindi/indidriver.c
# Compile $SRC/external/libindi/indidrivermain.c
# Compile $SRC/external/libindi/indiserver.c
# Compile $SRC/external/libindi/libs/indibase/baseclient.cpp
# Compile $SRC/external/libindi/libs/indibase/baseclientqt.cpp
# Compile $SRC/external/libindi/libs/indibase/basedevice.cpp
# Compile $SRC/external/libindi/libs/indibase/connectionplugins/connectioninterface.cpp
# Compile $SRC/external/libindi/libs/indibase/connectionplugins/connectionserial.cpp
# Compile $SRC/external/libindi/libs/indibase/connectionplugins/connectiontcp.cpp
# Compile $SRC/external/libindi/libs/indibase/defaultdevice.cpp
# Compile $SRC/external/libindi/libs/indibase/hid_libusb.c
# Compile $SRC/external/libindi/libs/indibase/hid_mac.c
# Compile $SRC/external/libindi/libs/indibase/hid_win.c
# Compile $SRC/external/libindi/libs/indibase/indiccd.cpp
# Compile $SRC/external/libindi/libs/indibase/indicontroller.cpp
# Compile $SRC/external/libindi/libs/indibase/indidetector.cpp
# Compile $SRC/external/libindi/libs/indibase/indidome.cpp
# Compile $SRC/external/libindi/libs/indibase/indidustcapinterface.cpp
# Compile $SRC/external/libindi/libs/indibase/indifilterinterface.cpp
# Compile $SRC/external/libindi/libs/indibase/indifilterwheel.cpp
# Compile $SRC/external/libindi/libs/indibase/indifocuser.cpp
# Compile $SRC/external/libindi/libs/indibase/indifocuserinterface.cpp
# Compile $SRC/external/libindi/libs/indibase/indigps.cpp
# Compile $SRC/external/libindi/libs/indibase/indiguiderinterface.cpp
# Compile $SRC/external/libindi/libs/indibase/indilightboxinterface.cpp
# Compile $SRC/external/libindi/libs/indibase/indilogger.cpp
# Compile $SRC/external/libindi/libs/indibase/indiproperty.cpp
# Compile $SRC/external/libindi/libs/indibase/indirotator.cpp
# Compile $SRC/external/libindi/libs/indibase/indirotatorinterface.cpp
# Compile $SRC/external/libindi/libs/indibase/indistandardproperty.cpp
# Compile $SRC/external/libindi/libs/indibase/inditelescope.cpp
# Compile $SRC/external/libindi/libs/indibase/indiusbdevice.cpp
# Compile $SRC/external/libindi/libs/indibase/indiweather.cpp
# Compile $SRC/external/libindi/libs/indicom.c
# Compile $SRC/external/libindi/libs/lilxml.c
# Compile $SRC/external/libindi/libs/lx/Lx.cpp


