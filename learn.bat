@echo off
title Learn commands
:start
cls
help
set /p command=Enter the command: 
cls
%command% /?
echo Press any key to go to the menu..
pause > nul
goto start