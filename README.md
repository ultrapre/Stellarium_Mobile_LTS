# Stellarium_Mobile_LTS
adaptation of PC version to Mobile (Android mainly, LTS tracking)

Copy from [Android WIP](https://github.com/Stellarium/stellarium/pull/194) ( *Initial Author : [DreamNik](https://github.com/DreamNik)* )



## Build Logs





**10/27/2020** - initial version (PC 0.18.0+)

rebuild sucessfully.

Deepin 1002, qt-opensource-linux-x64-5.9.6.run, ndk 10e, [Source Code](https://github.com/DreamNik/stellarium/tree/1fc06cdbcbb172310fd86fd185c4ae0d9a187523), [Project Build Files](https://drive.google.com/open?id=1zP6JEOuF4vbsziwofh6mfUDt5HZKaSbh)

No need to unpack source code and project build files to thge same directory.

Install Qt Android-arm v7 + QtScripts

Open _config.pri, edit:

STEL = source code directory

STEL_ASSETS = assets, you can extract from existing projects

DESTDIR     = build-Libraries-Android_for_armeabi_v7a_GCC_4_9_Qt_5_9_6_for_Android_armv7_e3cfb7-Debug/android-build/libs/armeabi-v7a



Qt --> Projects --> Build Environment --> ANDROID_NDK_PLATFORM = android-21

First build "Libraries.pro" to produce *.so, then build "Application.pro" to produce apk.

Test pass.









