REM run as Administrator
@echo off
cd /d %~dp0
@REM set DOWNLOAD_DIR=%USERPROFILE%\Downloads
@REM set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
@REM SET PATH=%DOWNLOAD_DIR%\PortableGit\bin;%DOWNLOAD_DIR%\mingw64-win32;%DOWNLOAD_DIR%\mingw64-win32\bin;%DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;%PATH%

set PATH=^
D:\Softwares\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\mingw64;^
D:\Softwares\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\mingw64\bin;^
D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;

@REM x86_64-8.1.0-release-win32-seh-rt_v6-rev0.7z

cmake.exe -G"MinGW Makefiles" -B./build
cd build

:rebuild_and_startapp
mingw32-make.exe
pause
REM GOTO rebuild_and_startapp
