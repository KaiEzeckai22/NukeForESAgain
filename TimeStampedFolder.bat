@echo off
TITLE TSF
SETLOCAL EnableDelayedExpansion
:START
echo [4;104;30m                       OPTIONS                    [0m
set  /p  option="[4;104;30m FULL/DATE/CANCEL/EXIT:  [0m "
IF '!option!' == 'CANCEL' GOTO  CANCEL
IF '!option!' == 'cancel' GOTO  CANCEL
IF '!option!' == 'canc' GOTO  EXIT
IF '!option!' == 'EXIT' GOTO  EXIT
IF '!option!' == 'exit' GOTO  EXIT
IF '!option!' == 'ex' GOTO  EXIT
IF '!option!' == 'RELOAD' GOTO  START
IF '!option!' == 'FULL' GOTO  OPERATION
IF '!option!' == 'full' GOTO  OPERATION
IF '!option!' == 'f' GOTO  OPERATION
IF '!option!' == 'DATE' GOTO  OPERATION
IF '!option!' == 'date' GOTO  OPERATION
IF '!option!' == 'd' GOTO  OPERATION
GOTO START
:OPERATION
set  /p  new_dir="[4;104;30m ENTER DIRECTORY NAME:  [0m "
FOR /F "skip=1" %%A IN ('WMIC OS GET LOCALDATETIME') DO (SET "t=%%A" & GOTO break_1)
:break_1
SET "m=%t:~10,2%" & SET "h=%t:~8,2%" & SET "d=%t:~6,2%" & SET "z=%t:~4,2%" & SET "y=%t:~0,4%" & SET "s=%t:~12,2%"
IF !h! GTR 11 (SET /A "h-=12" & SET "ap=P" & IF "!h!"=="0" (SET "h=00") ELSE (IF !h! LEQ 9 (SET "h=0!h!"))) ELSE (SET "ap=A")
IF !z!==01 SET z=January
IF !z!==02  SET z=February
IF !z!==03  SET z=March
IF !z!==04  SET z=April
IF !z!==05  SET z=May
IF !z!==06  SET z=June
IF !z!==07  SET z=July
IF !z!==08  SET z=August
IF !z!==09  SET z=September
IF !z!==10  SET z=October
IF !z!==11  SET z=November
IF !z!==12  SET z=December
IF '!option!' == 'FULL' GOTO  FULL_STAMP
IF '!option!' == 'full' GOTO  FULL_STAMP
IF '!option!' == 'f' GOTO  FULL_STAMP
IF '!option!' == 'DATE' GOTO  JUST_DATE
IF '!option!' == 'date' GOTO  JUST_DATE
IF '!option!' == 'd' GOTO  JUST_DATE
:FULL_STAMP
SET full_dir=%new_dir% (%z% %d%,%y% %h%.%m% %ap%M)
GOTO END_FILTER
:JUST_DATE
SET full_dir=%new_dir% (%z% %d%,%y%)
GOTO END_FILTER
:END_FILTER
ECHO %full_dir% has been created
mkdir "%full_dir%"
PAUSE >null
GOTO :CLEAR

:CLEAR
CLS
GOTO START

:CANCEL
:EXIT
