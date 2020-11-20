# Recommendations:
#	- use NDK v10e
#	- set "Android build SDK" option to "android-21"
#	- set environment variable "ANDROID_NDK_PLATFORM" to "android-21"
#	- override "make" to any other than from NDK
#     (e.g. D:\Dev\Qt\5.11.0\Tools\mingw530_32\bin\mingw32-make.exe )
#   - disable "Make install" and "Build Android APK" steps
#   - make sure there are no spaces in tool paths
#   - don't use project dependencies, only Stellarium project needs deployment

STEL        = D:\Silas\Stellarium\stellarium-android_fixes
STEL_ASSETS = D:\Silas\Stellarium\assets
DESTDIR     = D:\Silas\Stellarium\orioginal\dast

QMAKE_CXXFLAGS += -Wno-unused-parameter -Wno-unused-variable
