rem @ECHO OFF
rem Install qt-opensource-windows-x86-5.9.4.exe
rem Install https://download.qt.io/official_releases/qt-installer-framework/4.0.1/QtInstallerFramework-win-x86.exe
rem Install git
rem Create a folder
rem Change in the created folder
rem git clone https://github.com/vkohaupt/vokoShowClickIFW.git
rem Copy vokoShowClick.exe in the folder \vokoShowClickIFW\windows\packages\root\data
rem Start this file

rem Version von vokoShowClick
SET version=3.0.0
SET installerName=vokoShowClick-%version%-win32.exe

rem Too find gcc
PATH=%PATH%;C:\Qt\Qt5.9.4\Tools\mingw530_32\bin

SET SCRIPT_LOCATION=%~dp0

C:\Qt\Qt5.9.4\5.9.4\mingw53_32\bin\windeployqt.exe --release %SCRIPT_LOCATION%\packages\root\data\vokoShowClick.exe

SET libfolder=%SCRIPT_LOCATION%\packages\root\data

copy C:\Qt\Qt5.9.4\Tools\mingw530_32\opt\bin\ssleay32.dll %libfolder%
copy C:\Qt\Qt5.9.4\Tools\mingw530_32\opt\bin\libeay32.dll %libfolder%

C:\Qt\QtIFW-4.0.1\bin\binarycreator --offline-only -c config/config.xml -p packages %installerName%

