@echo off

setlocal EnableExtensions EnableDelayedExpansion

set CYGWINPATH="C:\dev\cygwin64"
set VIMCONFIG="C:\dev\cfg\vim-config"

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

@echo Cleaning up any pre-existing files...
if exist "%CYGWINPATH%\home\%USERNAME%\.gvimrc" del /f /q "%CYGWINPATH%\home\%USERNAME%\.gvimrc"        
if exist "%CYGWINPATH%\home\%USERNAME%\.vimrc"  del /f /q "%CYGWINPATH%\home\%USERNAME%\.vimrc"        
if exist "%CYGWINPATH%\home\%USERNAME%\_gvimrc" del /f /q "%CYGWINPATH%\home\%USERNAME%\_gvimrc"        
if exist "%CYGWINPATH%\home\%USERNAME%\_vimrc"  del /f /q "%CYGWINPATH%\home\%USERNAME%\_vimrc"        
if exist "%CYGWINPATH%\home\%USERNAME%\.vim"    rd /q "%CYGWINPATH%\home\%USERNAME%\.vim"        

@echo Creating links...
if exist "%VIMCONFIG%\_gvimrc"  mklink    "%CYGWINPATH%\home\%USERNAME%\.gvimrc" "%VIMCONFIG%\_gvimrc"
if exist "%VIMCONFIG%\_vimrc"   mklink    "%CYGWINPATH%\home\%USERNAME%\.vimrc"  "%VIMCONFIG%\_vimrc"
if exist "%VIMCONFIG%\_gvimrc"  mklink    "%CYGWINPATH%\home\%USERNAME%\_gvimrc" "%VIMCONFIG%\_gvimrc"
if exist "%VIMCONFIG%\_vimrc"   mklink    "%CYGWINPATH%\home\%USERNAME%\_vimrc"  "%VIMCONFIG%\_vimrc"
if exist "%VIMCONFIG%\vimfiles" mklink /d "%CYGWINPATH%\home\%USERNAME%\.vim"    "%VIMCONFIG%\vimfiles"

endlocal
