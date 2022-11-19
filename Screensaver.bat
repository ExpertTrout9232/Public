@echo off
color 2
title Screensaver
:x
cls
set a=      %a%
echo %a%Loading...
timeout /t 0 /nobreak > nul
set /a b=(%random%*8/32768)+1
color %b%
goto x

