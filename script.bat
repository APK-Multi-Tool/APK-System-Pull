@echo off

echo.Make sure Debugging is enabled on your phone
echo.This dumps the ~/system/ folder extract to %~dp0SystemPull\
echo.This is not for "backups" but for development use.
pause
echo. Waiting for device...
tools\adb kill-server
tools\adb wait-for-device
echo. Device found.
	
tools\adb pull system %~dp0SystemPull\
pause
echo. System pull complete Killing ADB
tools\adb kill-server
echo. ADB KILLED NOW CLOSING SCRIPT
pause
exit