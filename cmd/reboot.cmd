@echo off
if defined DEVICE goto :device
adb reboot
goto :end

:device
adb  -s %DEVICE% reboot

:end