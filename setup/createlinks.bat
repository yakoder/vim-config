@echo off

setlocal EnableExtensions EnableDelayedExpansion

set CYGWINPATH="C:\dev\cygwin64"
set VIMCONFIG="C:\dev\code\private\yakoder\vim-config"
set VIMINSTALL=""C:\Program Files (x86)\Vim""

if not exist "%CYGWINPATH%\home\%USERNAME%" (
    @echo Aborting...
    @echo Directory not found: "%CYGWINPATH%\home\%USERNAME%"
    goto:eof
)
if not exist "%VIMCONFIG%" (
    @echo Aborting...
    @echo Directory not found: "%VIMCONFIG%"
    goto:eof
)
if not exist "%VIMINSTALL%" (
    @echo Aborting...
    @echo Directory not found: "%VIMINSTALL%"
    goto:eof
)

@echo Cleaning up any pre-existing files...
echo "home-user: .gvimrc _gvimrc"
if exist "%CYGWINPATH%\home\%USERNAME%\.gvimrc"  del /f /q /a "%CYGWINPATH%\home\%USERNAME%\.gvimrc"        
if exist "%CYGWINPATH%\home\%USERNAME%\_gvimrc"  del /f /q /a "%CYGWINPATH%\home\%USERNAME%\_gvimrc"        
echo "home-user: .vimrc _vimrc"
if exist "%CYGWINPATH%\home\%USERNAME%\.vimrc"   del /f /q /a "%CYGWINPATH%\home\%USERNAME%\.vimrc"        
if exist "%CYGWINPATH%\home\%USERNAME%\_vimrc"   del /f /q /a "%CYGWINPATH%\home\%USERNAME%\_vimrc"        
echo "home-user: .viminfo _viminfo"
if exist "%CYGWINPATH%\home\%USERNAME%\.viminfo" del /f /q /a "%CYGWINPATH%\home\%USERNAME%\.viminfo"        
if exist "%CYGWINPATH%\home\%USERNAME%\_viminfo" del /f /q /a "%CYGWINPATH%\home\%USERNAME%\_viminfo"        
echo "home-user: .vim"
if exist "%CYGWINPATH%\home\%USERNAME%\.vim"     del /f /q /a "%CYGWINPATH%\home\%USERNAME%\.vim"        
if exist "%CYGWINPATH%\home\%USERNAME%\.vim"     rd /s /q     "%CYGWINPATH%\home\%USERNAME%\.vim"        

echo "viminstall: .gvimrc _gvimrc"
if exist "%VIMINSTALL%\.gvimrc"                  del /f /q /a "%VIMINSTALL%\.gvimrc"
if exist "%VIMINSTALL%\_gvimrc"                  del /f /q /a "%VIMINSTALL%\_gvimrc"
echo "viminstall: .vimrc _vimrc"
if exist "%VIMINSTALL%\.vimrc"                   del /f /q /a "%VIMINSTALL%\.vimrc"
if exist "%VIMINSTALL%\_vimrc"                   del /f /q /a "%VIMINSTALL%\_vimrc"
echo "viminstall: vimfiles"
if exist "%VIMINSTALL%\vimfiles"                 del /f /q /a "%VIMINSTALL%\vimfiles"
if exist "%VIMINSTALL%\vimfiles"                 rd /s /q     "%VIMINSTALL%\vimfiles"


echo "userprofile: .gvimrc _gvimrc"
if exist "%USERPROFILE%\.gvimrc"                  del /f /q /a "%USERPROFILE%\.gvimrc"
if exist "%USERPROFILE%\_gvimrc"                  del /f /q /a "%USERPROFILE%\_gvimrc"
echo "userprofile: .vimrc _vimrc"
if exist "%USERPROFILE%\.vimrc"                   del /f /q /a "%USERPROFILE%\.vimrc"
if exist "%USERPROFILE%\_vimrc"                   del /f /q /a "%USERPROFILE%\_vimrc"
echo "userprofile: .viminfo _viminfo"
if exist "%USERPROFILE%\.viminfo"                 del /f /q /a "%USERPROFILE%\.viminfo"
if exist "%USERPROFILE%\_viminfo"                 del /f /q /a "%USERPROFILE%\_viminfo"
echo "userprofile: vimfiles"
if exist "%USERPROFILE%\vimfiles"                 del /f /q /a "%USERPROFILE%\vimfiles"
if exist "%USERPROFILE%\vimfiles"                 rd /s /q     "%USERPROFILE%\vimfiles"

@echo Creating links...
echo "home-user: .gvimrc .vimrc .viminfo .vim"
if exist "%VIMCONFIG%\_gvimrc"  mklink    "%CYGWINPATH%\home\%USERNAME%\.gvimrc"  "%VIMCONFIG%\_gvimrc"
if exist "%VIMCONFIG%\_vimrc"   mklink    "%CYGWINPATH%\home\%USERNAME%\.vimrc"   "%VIMCONFIG%\_vimrc"
if exist "%VIMCONFIG%\_viminfo" mklink /h "%CYGWINPATH%\home\%USERNAME%\.viminfo" "%VIMCONFIG%\_viminfo"
if exist "%VIMCONFIG%\vimfiles" mklink /d "%CYGWINPATH%\home\%USERNAME%\.vim"     "%VIMCONFIG%\vimfiles"

echo "viminstall: .gvimrc _gvimrc .vimrc _vimrc vimfiles"
if exist "%VIMCONFIG%\_gvimrc"  mklink    "%VIMINSTALL%\.gvimrc"  "%VIMCONFIG%\_gvimrc"
if exist "%VIMCONFIG%\_gvimrc"  mklink    "%VIMINSTALL%\_gvimrc"  "%VIMCONFIG%\_gvimrc"
if exist "%VIMCONFIG%\_vimrc"   mklink    "%VIMINSTALL%\.vimrc"   "%VIMCONFIG%\_vimrc"
if exist "%VIMCONFIG%\_vimrc"   mklink    "%VIMINSTALL%\_vimrc"   "%VIMCONFIG%\_vimrc"
if exist "%VIMCONFIG%\vimfiles" mklink /d "%VIMINSTALL%\vimfiles" "%VIMCONFIG%\vimfiles"

echo "userprofile: _gvimrc _vimrc _viminfo vimfiles"
if exist "%VIMCONFIG%\_gvimrc"  mklink    "%USERPROFILE%\_gvimrc"  "%VIMCONFIG%\_gvimrc"
if exist "%VIMCONFIG%\_vimrc"   mklink    "%USERPROFILE%\_vimrc"   "%VIMCONFIG%\_vimrc"
if exist "%VIMCONFIG%\_viminfo" mklink /h "%USERPROFILE%\_viminfo" "%VIMCONFIG%\_viminfo"
if exist "%VIMCONFIG%\vimfiles" mklink /d "%USERPROFILE%\vimfiles" "%VIMCONFIG%\vimfiles"

endlocal
