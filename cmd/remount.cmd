rem @echo off
adb wait-for-device
adb root
adb wait-for-device
adb remount
adb wait-for-device
rem adb disable-verity
@echo off
for /f "tokens=*" %%a in ( 
'adb disable-verity'
) do ( 
set reboot=%%a 
)
rem echo %reboot%
echo %reboot%|findstr "reboot" >nul
if %errorlevel% == 0 (
    goto :reboot
) else (
    goto :end
)
rem if not "%reboot%" == "" ( echo %reboot% )

:reboot
adb wait-for-device
adb reboot
echo "Now Rebooting..."
adb wait-for-device
adb root
adb wait-for-device
adb remount

:end
echo ok~
