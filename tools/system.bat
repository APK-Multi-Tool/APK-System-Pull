@echo off
COLOR 0A
echo.Make sure Debugging is enabled on your phone
echo.This dumps the ~/system/ folder extract to %~dp0SystemPull\
echo.This is not for "backups" but for development use.
pause
cd ..
echo. Waiting for device...
tools\adb kill-server
tools\adb wait-for-device
echo. Device found.
	
tools\adb pull system SystemPull\
pause
echo. System pull complete Killing ADB
tools\adb kill-server
echo. ADB KILLED NOW Returning to main menu
pause
exit