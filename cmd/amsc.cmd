rem @echo off
if defined DEVICE goto :device
adb shell am start -a android.intent.action.MAIN -n %1

goto :end
:device
adb -s %DEVICE% shell am start -a android.intent.action.MAIN -n %1
:end