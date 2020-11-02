# Stellarium_Mobile_LTS
adaptation of PC version to Mobile (Android mainly, LTS tracking)

Copy from [Android WIP](https://github.com/Stellarium/stellarium/pull/194) ( *Initial Author : [DreamNik](https://github.com/DreamNik)* )

welcome for building new version based on after PC 0.18.0 !

## Build Logs

**10/31/2020** - v1.1.1 (PC 0.18.0+, NDK: android-30)

qt 5.14.2, ndk-21


**10/28/2020** - v1.1 (PC 0.18.0+, NDK: android-26)

Windows10x64,

qt-opensource-windows-x86-5.12.5.exe, check MinGW32+ARMv7+QtScript+MinGW32(Tools)

android-ndk-r19c-windows-x86_64.zip

Qt: 

open Libraries.pro: ARMv7 release

Qt --> Projects --> Build Environment --> ANDROID_NDK_PLATFORM = android-26

ban Make install and Build Android APK

change context in _config.pri, source code still stellarium-android_fixes

don't change make to mingw32-make.exe, keep NDK's compiler(make.exe)

build Libraries

open Application.pro: ARMv7 release

Qt --> Projects --> Build Environment --> ANDROID_NDK_PLATFORM = android-26

Build Android APK --> Application --> Android build SDK: android-30

change line 44 45 to android-26

Compile and meet error in gradle function:

`com.android.build.gradle.tasks.factory.AndroidJavaCompile.setDependencyCacheDir(Ljava/io/File;)V`

comment out `DISTFILES +=` and remove android/*

and it will produce new.

finish

**10/27/2020** - initial version (PC 0.18.0+, NDK: android-21)

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









