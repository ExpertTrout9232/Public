@echo off
title Hra o hadani cisel
:start
color f
cls
echo =======================================================
echo                   Hra o hadani cisel!
echo =======================================================
echo.
echo Vyberte obtiznost hry:
echo [Velmi lehka]: 1 - 10
echo [Lehka]:       1 - 100  
echo [Stredni]:     1 - 500
echo [Tezka]:       1 - 10 000
echo [Velmi tezka]: 1 - 32 767
echo [Bonusova]:    -32 767 - 32 767
echo.
set /p obtiznost=Zadejte obtiznost hry: 
if "%obtiznost%" == "Velmi lehka" set /a cislo=(%random%*10/32768)+1 & color a & goto level
if "%obtiznost%" == "Lehka" set /a cislo=(%random%*100/32768)+1 & color 2 & goto level
if "%obtiznost%" == "Stredni" set /a cislo=(%random%*500/32768)+1 & color 6 & goto level
if "%obtiznost%" == "Tezka" set /a cislo=(%random%*10000/32768)+1 & color c & goto level
if "%obtiznost%" == "Velmi tezka" set /a cislo=(%random%*32767/32768)+1 & color 4 & goto level
if "%obtiznost%" == "Bonusova" set /a cislo=%random%*(32767-(-32767)+1)/32768+(-32767) & color 5 & goto level
goto start

:level
cls
echo =======================================================
echo                        Hadej!
echo =======================================================
set /p tip=Zadej cislo, ktere si myslis: 
set /a pokusy=1
goto level2


:level2
cls
echo =======================================================
echo                        Hadej!
echo =======================================================
if %tip% == %cislo% goto win
if %tip% lss %cislo% echo Vice
if %tip% gtr %cislo% echo Mene
set /p tip=Skoda, ale muzes zadat cislo, ktere si myslis: 
set /a pokusy+=1
goto level2

:win
color f
cls
echo =======================================================
echo                       Vyhral jsi!
echo           Dalo ti to zabrat %pokusy% pokusu.           
echo =======================================================
echo.
set /p pokracovat=Chces pokracovat? [Ano/Ne]: 
if %pokracovat%==Ano goto start
if %pokracovat%==Ne goto ukonceni
goto win

:ukonceni
cls
echo Dekuji, ze jsi hral tuto hru.
echo Hra bude ukoncena za 5 sekund...
timeout /t 5 /nobreak > nul
exit






