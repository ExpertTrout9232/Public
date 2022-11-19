@echo off
title Spam
color 2
set /p user=Enter the username of the user you want to spam: 
set /p message=Enter The message: 
:loop
msg %user% /v %message%
goto loop