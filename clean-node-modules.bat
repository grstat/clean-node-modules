@echo off

REM -------------------------------------------------
REM This script is provided "as is" with no warranty.
REM Use at your own risk.
REM It is always recommended to do a /dry-run first
REM -------------------------------------------------

SETLOCAL EnableDelayedExpansion

set "SHOW_USAGE=0"

if "%~1"=="" (
	set "SHOW_USAGE=1"
)

if /i "%~1"=="/?" (
	set "SHOW_USAGE=1"
)

if /i "%SHOW_USAGE%"=="1" (
    echo Search given parent folder for nodejs node_modules and delete them
    echo Usage: %~nx0 ^<parent_folder_path^> [/dry-run] [/Y]
	echo    ^<parent_folder_path^> - The path to search exp C:\stuff
	echo    /dry-run - Only shows what would have been deleted
	echo    /Y - Skips delete confirmation
    exit /b 1
)


set "searchDir=%~1"
set "DRY_RUN=0"
set "AUTO_REPLY=0"
set /a fcount=0
set /a delcnt=0

if not exist "%searchDir%" (
    echo [ERROR] The directory "%searchDir%" does not exist.
    exit /b 1
)

if not exist "%searchDir%\*" (
    echo [ERROR] "%searchDir%" is not a valid folder or is inaccessible.
    exit /b 1
)

if /i "%~2"=="/dry-run" set "DRY_RUN=1"
if /i "%~3"=="/dry-run" set "DRY_RUN=1"
if /i "%~2"=="/Y" set "AUTO_REPLY=1"
if /i "%~3"=="/Y" set "AUTO_REPLY=1"

cls
echo ******************************************************
echo Search started in %searchDir%
echo ******************************************************

for /D /R "%searchDir%" %%d in (node_modules) do (
    REM echo Found %%d
	if exist "%%d" (
		set /a fcount+=1
		if "%DRY_RUN%"=="1" (
			echo -^> Dry Run Delete: %%d
		) else (
			if "%AUTO_REPLY%"=="1" (
				echo -^> Deleting %%d
				rd /s /q "%%d"
			) else (
				rd /s "%%d"
			)
			set /a delcnt+=1
		)
	)
)
echo ******************************************************
echo Found %fcount%
echo Deleted %delcnt%
echo ******************************************************
echo Done
