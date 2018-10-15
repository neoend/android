@echo off
IF [%1]==[] GOTO BLANK
@echo on
adb install -r %1
@echo off
IF [%2]==[] GOTO BLANK
@echo on
adb install -r %2
@echo off
IF [%3]==[] GOTO BLANK
@echo on
adb install -r %3
@echo off
IF [%4]==[] GOTO BLANK
@echo on
adb install -r %4
@echo off
IF [%5]==[] GOTO BLANK
@echo on
adb install -r %5

:BLANK
