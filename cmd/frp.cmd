rem @echo off
adb wait-for-device
adb shell content insert --uri content://settings/secure --bind name:s:user_setup_complete --bind value:s:1
adb wait-for-device
adb shell am broadcast -a com.android.LGSetupWizard.ATOS_SETUPWIZARD_SKIP
