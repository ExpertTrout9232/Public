@echo off
title Vypocet casu
color b
echo U
ping /n 1 /w 70 localhost > nul
cls
echo SU
ping /n 1 /w 70 localhost > nul
cls
echo ASU
ping /n 1 /w 70 localhost > nul
cls
echo CASU
ping /n 1 /w 70 localhost > nul
cls
echo  CASU
ping /n 1 /w 70 localhost > nul
cls
echo T CASU
ping /n 1 /w 70 localhost > nul
cls
echo ET CASU
ping /n 1 /w 70 localhost > nul
cls
echo CET CASU
ping /n 1 /w 70 localhost > nul
cls
echo OCET CASU
ping /n 1 /w 70 localhost > nul
cls
echo POCET CASU
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
timeout /t 1 /nobreak > nul
echo VYPOCET CASU
echo 2
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo 32
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo 232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo 9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo t9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo ut9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo out9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo rout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo Trout9232
ping /n 1 /w 70 localhost > nul
cls
echo tTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo rtTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo ertTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo pertTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo xpertTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo ExpertTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo  ExpertTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo y ExpertTrout9232
ping /n 1 /w 70 localhost > nul
cls
echo VYPOCET CASU
echo By ExpertTrout9232
ping /n 1 /w 70 localhost > nul
timeout /t 2 /nobreak > nul
:start
cls
echo Vypocet doby k urcitemu casovemu udaji:
echo.
set /p doba=Zadejte casovy udaj: 

rem Vypocet hodin
if %doba:~1,1% == : (
    if %doba:~0,1% lss %time:~0,2% ( set /a hodiny=%doba:~0,1%-%time:~0,2%+24) else set /a hodiny=%doba:~0,1%-%time:~0,2%
) else if %doba:~0,2% lss %time:~0,2%  ( set /a hodiny=%doba:~0,2%-%time:~0,2%+24) else set /a hodiny=%doba:~0,2%-%time:~0,2%

rem Vypocet minut
if %doba:~-2,2% lss %time:~-8,2% (
    set /a minuty=%doba:~-2,2%-%time:~-8,2%+60 & set /a hodiny-=1
) else set /a minuty=%doba:~-2,2%-%time:~-8,2%
if %hodiny% == -1 set hodiny=23

echo.
echo.

rem Sklonovani
if %hodiny% == 1 set hodiny_=hodinu
if %hodiny% gtr 1 set hodiny_=hodiny
if %hodiny% gtr 3 set hodiny_=hodin
if %minuty% == 1 set minuty_=minutu
if %minuty% gtr 1 set minuty_=minuty
if %minuty% gtr 3 set minuty_=minut

rem Nastaveni formatu odpovedi
if %hodiny% gtr 0 ( if %minuty% gtr 0 set vysledek=2) else set vysledek=3
if %minuty% gtr 0 ( if %hodiny% == 0 set vysledek=4)
if %hodiny% == 0 ( if %minuty% == 0 set vysledek=1)

rem Vypis vysledku
if %vysledek% == 1 echo %doba% je prave ted.
if %vysledek% == 2 echo Od aktualniho casu %time:~0,5% bude %doba% za %hodiny% %hodiny_% a %minuty% %minuty_%.
if %vysledek% == 3 echo Od aktualniho casu %time:~0,5% bude %doba% za %hodiny% %hodiny_%.
if %vysledek% == 4 echo Od aktualniho casu %time:~0,5% bude %doba% za %minuty% %minuty_%. 
pause > nul
goto start