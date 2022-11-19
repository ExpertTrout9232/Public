@echo off
color 2
:start
cls
echo Vitej v kalkulacce!
set /p prvni=Zadej prvni cislo: 
set /p druhe=Zadej druhe cislo: 
echo 1 - Scitani
echo 2 - Odcitani
echo 3 - Nasobeni
echo 4 - Deleni
set /p operace=Zadej cislo operace: 
if %operace% == 1 set /a vysledek=%prvni%+%druhe%
if %operace% == 2 set /a vysledek=%prvni%-%druhe%
if %operace% == 3 set /a vysledek=%prvni%*%druhe%
if %operace% == 4 set /a vysledek=%prvni%/%druhe%
if %operace% == 4 (if %druhe% == 0 echo Delit nulou nelze! & echo Za to ti vypnu pocitac & start https://tenor.com/view/rock-sus-gif-21568224 & shutdown /s /t 30 /c "Tvuj pocitac se vypne za 30 sekund...")
echo Vysledek je: %vysledek%
set /p pokracovat=Chces pokracovat? [Ano/Ne]
if %pokracovat% == Ano (goto start) else exit 