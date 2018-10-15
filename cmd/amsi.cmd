rem @echo off
if defined DEVICE goto :device
adb shell am broadcast -a %1

goto :end
:device
adb -s %DEVICE% shell am broadcast -a %1
:end