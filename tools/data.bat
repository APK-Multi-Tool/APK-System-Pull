@echo off
COLOR 0A
echo.Make sure Debugging is enabled on your phone
echo.This dumps the ~/DATA/ folder extract to %~dp0DataPull\
echo.This is not for "backups" but for development use.
pause
cd ..
echo. Waiting for device...
tools\adb kill-server
tools\adb wait-for-device
echo. Device found.
	
tools\adb pull data \DataPull\

pause
echo. Data pull complete Killing ADB
tools\adb kill-server
echo. ADB KILLED NOW Returning to main menu
pause
exit
