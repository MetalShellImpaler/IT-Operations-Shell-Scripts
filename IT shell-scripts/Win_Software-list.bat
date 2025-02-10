@echo off
set "output=%USERPROFILE%\Win_Software-list.txt"

echo Software in this Windows PC > "%output%"
echo Date: %date% Time: %time% >> "%output%"
echo. >> "%output%"

echo From Registry. >> "%output%"
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s | findstr "DisplayName" >> "%output%"
reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall" /s | findstr "DisplayName" >> "%output%"

echo. >> "%output%"
echo Microsoft Store Apps. >> "%output%"
powershell "Get-AppxPackage | Select-Object Name" >> "%output%"

echo Results saved to: %output%
pause