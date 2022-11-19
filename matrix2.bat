@echo off 
title Matrix 2
color 2 
setlocal enabledelayedexpansion
set b=abcdefghijklmnopqrstuvwxyz123456789
:start
set /a c=(%random%*35/32768)+1
set /a c_=(%random%*35/32768)+1
set /a c__=(%random%*35/32768)+1
set /a c___=(%random%*35/32768)+1
set /a c____=(%random%*35/32768)+1
set e=0
:loop
set d=                                   
set /a a=(%random%*35/32768)+1
set /a a_=(%random%*35/32768)+1
set /a a__=(%random%*35/32768)+1
set /a a___=(%random%*35/32768)+1
set /a a____=(%random%*35/32768)+1
set /a f=%a%-1
set /a f_=%a_%-1
set /a f__=%a__%-1
set /a f___=%a___%-1
set /a f____=%a____%-1
echo !d:~0,%c%!!b:~%f%,1!   !d:~0,%c_%!!b:~%f_%,1!   !d:~0,%c__%!!b:~%f__%,1!   !d:~0,%c___%!!b:~%f___%,1!   !d:~0,%c____%!!b:~%f____%,1!
set /a e+=1
if %e% == 35 goto start
ping localhost /t 50 /n 1 > nul
goto loop

