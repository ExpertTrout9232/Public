@echo off
title hodiny
color 2
:start
cls
echo %time%
ping /n 1 /w 1 localhost > nul
goto start