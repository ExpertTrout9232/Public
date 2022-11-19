::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy+WQrEESVeYsRInazL2NL+5TohCtO58u2Ro=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIXJxRTQAHi
::eg0/rx1wNQPfEVWB+kM9LVsJDCONM2y2A9U=
::fBEirQZwNQPfEVWB+kM9LVsJDCONM2y2A9U=
::cRolqwZ3JBvQF1fEqQIXJxRTQAHi
::dhA7uBVwLU+EWHyc5EciPC9GQxGWZTnpVNU=
::YQ03rBFzNR3SWATEVotQ
::dhAmsQZ3MwfNWATEVosRJBcUXg2FNH/6FLAP7frt6u7n
::ZQ0/vhVqMQ3MEVWAtB9weVUEAlTMbAs=
::Zg8zqx1/OA3MEVWAtB9weVUEAlTMbAs=
::dhA7pRFwIByZRRmj+003JB40
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN4Sd4XemrycOdw+5U/hNYY/2X1ImcYVMDNXah29a08xsWt+kWuKMMuZlw7zQXyB40Y1VWBsggM=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Google
:start
cls
echo    _____                   _      
echo  / ____^|                 ^| ^|     
echo ^| ^|  __  ___   ___   __ _^| ^| ___ 
echo ^| ^| ^|_ ^|/ _ \ / _ \ / _` ^| ^|/ _ \
echo ^| ^|__^| ^| (_) ^| (_) ^| (_^| ^| ^|  __/
echo  \_____^|\___/ \___/ \__, ^|_^|\___^|
echo                      __/ ^|       
echo                     ^|___/        
echo [1] - Hledat Googlem
echo [2] - Zkusim Stesti
echo [3] - Gmail
echo [4] - Youtube
echo [5] - Mapy
echo [6] - Kalendar
echo [7] - Disk
echo [8] - Prekladac
set /p cislo=Zadejte cislo: 
if %cislo% == 1 goto search
if %cislo% == 2 start https://www.google.com/doodles & goto start
if %cislo% == 3 start www.gmail.com & goto start
if %cislo% == 4 start www.youtube.com & goto start
if %cislo% == 5 start https://maps.google.com & goto start
if %cislo% == 6 start https://calendar.google.com & goto start
if %cislo% == 7 start https://drive.google.com & goto start
if %cislo% == 8 start https://translate.google.com & goto start
:search
echo.
set /p search=Hledat Googlem: 
start https://www.google.com/search?q=%search%
goto start