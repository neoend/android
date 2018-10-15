@echo off
adb wait-for-device
adb root
rem adb wait-for-device
rem adb remount
adb shell ps | grep PID
adb shell ps | grep %1