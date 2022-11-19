@echo off
title Make Bat
color 2
set /p name=Enter the file name: 
echo @echo off >> "%name%.bat"
echo title >> "%name%.bat"
echo color 2 >> "%name%.bat"
code "%name%.bat"
exit