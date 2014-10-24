ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO PRESS 1, 2 of 3 -Bright.
ECHO ...............................................
ECHO.
ECHO 1 - Enable NetworkAdapter
ECHO 2 - Disable NetworkAdapter
ECHO 3 - EXIT
ECHO.
SET /P M=Type 1, 2, or 3 then press ENTER:
IF %M%==1 GOTO ENABLE
IF %M%==2 GOTO DISABLE
IF %M%==3 GOTO EXIT
:ENABLE
cd C:/
netsh interface set interface name="Wi-Fi" enable
GOTO MENU
:DISABLE
cd C:/
netsh interface set interface name="Wi-Fi" disable
GOTO MENU
:EXIT
EXIT
GOTO MENU