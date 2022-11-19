::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy+WQrEESVeYsRInazL2NL+5TohOtO58u2Ro=
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
::ZQ05rAF9IAHYFVzEqQIDMQhASQnPFWW8Cfge8aXe9/qCsFkpRu0qbNaJiebDNrFdugu0FQ==
::eg0/rx1wNQPfEVWB+kM9LVsJDDebL3+/C/g15u70ouie72gFROctbLvJ1aGaebJAuAjyJNh9mCo6
::fBEirQZwNQPfEVWB+kM9LVsJDDebL3+/C/g15u70ouie72gFROctbLvJ1aGaebJAuAjyJNh9mCo6
::cRolqwZ3JBvQF1fEqQIDMQhASQnPFWW8Cfge8aXe9/qCsFkpRu0qbNaJiebDNrFdugu0FQ==
::dhA7uBVwLU+EWHyc5EciPC9GQxGWZTnpVNU=
::YQ03rBFzNR3SWATEVotQ
::dhAmsQZ3MwfNWATEVosRJBcUXg2FNH/6FLAP7frt6u7n
::ZQ0/vhVqMQ3MEVWAtB9weVUEAlTMbAs=
::Zg8zqx1/OA3MEVWAtB9weVUEAlTMbAs=
::dhA7pRFwIByZRRm37VEkLRYZZQqEMya4H/g58Pj+/f6zsEIIQLttK92WzOXAcK5Dig==
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN4Sd4XemrycOdw+5U/hNYY/2X1ImcYVMDNXah29a08xsWt+hX2WI8KR/ibvTEfE5FJ9Pn1kgnHEuDk0dccxyJBRnjbvsh+xzesVyX2f
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title SySInfo
color 2 
%homedrive%
cd \
echo Run as administrator!
pause
cls
echo Welcome to System info by ExpertTrout9232!
echo Select option:
echo [1] - Whole Disk (it takes some time)
echo [2] - Only Username (it takes some time)
echo [3] - Only Program Files (it takes some time)
echo [4] - Only Windows (it takes some time)
echo [5] - Specific folder
echo [6] - System info
echo [7] - Date and time
echo [8] - IP
echo [9] - Network speed
echo [10] - All/Other (it takes some time)
set /p select=Enter the number: 
if %select% == 1 cd \
if %select% == 2 cd users\%username%
if %select% == 3 cd Program files
if %select% == 4 cd Windows
if %select% == 5 goto specific
if %select% == 6 goto system
if %select% == 7 goto time
if %select% == 8 goto ip
if %select% == 9 goto network
if %select% == 10 goto other

echo Processing...
tree /a /f > %homedrive%\users\%username%\desktop\output.txt
echo Operation completed...
cd %homedrive%\users\%username%\desktop > nul
start output.txt
pause > nul
exit

:system
echo Processing...
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"OS Manufacturer" /C:"OS Configuration" /C:"OS Build Type" /C:"Original Install Date" /C:"System Boot Time" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Processor(s)" /C:"BIOS Version" /C:"Windows Directory" /C:"System Directory" /C:"Boot Device" /C:"System Locale" /C:"Input Locale" /C:"Total Physical Memory" /C:"Available Physical Memory" /C:"Virtual Memory: Max Size" /C:"Virtual Memory: Available" /C:"Virtual Memory: In Use" /C:"Domain" /C:"Network Card(s)" > %homedrive%\users\%username%\desktop\output.txt
echo Operation completed...
cd %homedrive%\users\%username%\desktop > nul
start output.txt
pause > nul
exit

:time
echo Processing...
echo %date% %time% > %homedrive%\users\%username%\desktop\output.txt
cd %homedrive%\users\%username%\desktop > nul
start output.txt
echo Operation completed...
pause > nul
exit

:ip
echo Processing...
ipconfig /all > %homedrive%\users\%username%\desktop\output.txt
cd %homedrive%\users\%username%\desktop > nul
start output.txt
echo Operation completed...
pause > nul
exit

:network
echo Processing...
ping www.google.com /n 10 > %homedrive%\users\%username%\desktop\output.txt
cd %homedrive%\users\%username%\desktop > nul
start output.txt
echo Operation completed...
pause > nul
exit

:other
echo Processing...
If not exist "%userprofile%\Desktop\SysInfo" Md "%userprofile%\Desktop\SysInfo"
Systeminfo > "%USERPROFILE%\Desktop\SysInfo\Systeminfo.txt"
GPRESULT /r /z  > "%userprofile%\Desktop\SysInfo\GroupPolicy.txt"
GPRESULT /f /h "%userprofile%\Desktop\SysInfo\GroupPolicy.html" 2>&1>nul
If Exist %SystemRoot%\MiniDump\*.dmp Copy %SystemRoot%\MiniDump\*.dmp "%userprofile%\Desktop\SysInfo" 2>&1>nul
Copy %SystemRoot%\System32\drivers\etc\hosts  "%userprofile%\Desktop\SysInfo\Hosts.txt" 2>&1>nul
Msinfo32 /nfo "%userprofile%\Desktop\SysInfo\Msinfo32.nfo" 2>&1>nul
If Exist wevtutil.exe Wevtutil qe System /f:text > "%userprofile%\Desktop\SysInfo\SystemEventlog.txt" 2>&1>nul
If Exist wevtutil.exe Wevtutil qe Application /f:text > "%userprofile%\Desktop\SysInfo\ApplicationEventlog.txt" 2>&1>nul
If Exist bcdedit.exe Bcdedit /enum all  > "%userprofile%\Desktop\SysInfo\Bcdedit.txt" 2>&1>nul
Dxdiag /t "%userprofile%\Desktop\SysInfo\dxdiag.txt"
powercfg.exe /energy /duration 10 /output  "%userprofile%\Desktop\SysInfo\Energy_Report.html" 2>&1>nul
PowerShell Get-CimInstance -ClassName Win32_Process ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\Process.txt"
PowerShell Get-Service ^| where status -eq "Running" ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\RunningServices.txt"
PowerShell Get-Service ^| where status -eq "stopped" ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\StoppedServices.txt"
PowerShell Get-WindowsOptionalFeature -Online ^| ? state -eq "disabled" ^| select featurename ^| sort -Descending ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\DisabledFeatures.txt"
PowerShell Get-psdrive -psprovider filesystem ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\PartitionList.txt"
PowerShell Get-CimInstance win32_desktop ^| where name -eq (whoami) ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\CurrentlyLogonUser.txt"
PowerShell Get-CimInstance -ClassName Win32_BIOS ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\BIOS.txt"
PowerShell Get-CimInstance -ClassName Win32_Processor ^| Select-Object -ExcludeProperty "CIM*" ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\CPU.txt"
PowerShell Get-CimInstance -ClassName Win32_ComputerSystem ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\PCModelInformation.txt"
PowerShell Get-CimInstance -ClassName Win32_QuickFixEngineering ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\Hotfixes.txt"
PowerShell Get-CimInstance -ClassName Win32_OperatingSystem ^| Select-Object -Property BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\OperatingSystemVersionInformation.txt"
PowerShell Get-CimInstance -ClassName Win32_OperatingSystem ^| Select-Object -Property *user* ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\RegisteredUser.txt"
PowerShell Get-CimInstance -ClassName Win32_LocalTime ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\LocalTime.txt"
PowerShell Get-WmiObject win32_baseboard ^| Format-List Product,Manufacturer,SerialNumber,Version,Model,Name ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\MotherBoardInfo.txt"
PowerShell Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* ^| Select-Object DisplayName, DisplayVersion, Publisher, InstallDate ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\InstalledPrograms.txt"
PowerShell Get-WindowsDriver -Online -All ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\Drivers.txt"
PowerShell Get-WindowsEdition -Online ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\WindowsEdition.txt"
PowerShell Get-NetAdapter -Name * -Physical ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\NetworkAdapters.txt"
PowerShell Get-NetIPConfiguration -All ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\IPConfiguration.txt"
PowerShell Get-WmiObject win32_physicalmemory ^| Format-Table Manufacturer,Banklabel,Configuredclockspeed,Devicelocator,Capacity,Serialnumber -autosize ^| Out-File -FilePath $env:"userprofile\Desktop\SysInfo\Memory.txt"
Explorer.exe "%userprofile%\Desktop\SysInfo"
echo Operation completed...
pause > nul
exit

:specific
set /p location=Enter the path to the folder: 
cd %location%
echo Processing...
tree /a /f > %homedrive%\users\%username%\desktop\output.txt
echo Operation completed...
cd %homedrive%\users\%username%\desktop > nul
start output.txt
pause > nul
exit