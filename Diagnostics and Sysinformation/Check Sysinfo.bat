@echo off

echo =============================
echo      System Information  
echo =============================
echo.

@echo off

:: Check TPM  status using PowerShell Get-Tpm command
echo Checking if TPM is enabled 
powershell -Command "if ((Get-Tpm).TpmReady) { Write-Host 'TPM is ENABLED' } else { Write-Host 'TPM is NOT ENABLED' }"

:: Check TPM version
echo Checking TPM version...
powershell -Command "(Get-WmiObject -Namespace 'Root\CIMv2\Security\MicrosoftTpm' -Class Win32_Tpm).SpecVersion"

:: Check Secure Boot status using PowerShell Confirm-SecureBootUEFI command
echo.
echo Checking Secure Boot status...
powershell -Command "if (Confirm-SecureBootUEFI) { Write-Host 'Secure Boot is ENABLED' } else { Write-Host 'Secure Boot is DISABLED or unsupported' }"

:: Check the status of BitLocker encryption
echo.
echo Checking BitLocker encryption...
manage-bde -status C:

:: Get CPU name and processor value
echo.
echo Checking CPU information...
wmic cpu get name, caption /format:list | findstr /i /c:"Name" /c:"Caption"

:: Get System SKU
echo.
echo Checking System SKU...
wmic computersystem get model /format:list | findstr /i /c:"Model"

:: Get Serial Number
echo.
echo Checking Serial Number...
wmic bios get serialnumber /format:list | findstr /i /c:"SerialNumber"

:: Get RAM capacity
echo.
echo Checking RAM capacity...
wmic memorychip get capacity /format:list | findstr /i /c:"Capacity"

:: Get Storage Drive information
echo.
echo Checking Storage Drive...
wmic diskdrive get model, size /format:list | findstr /i /c:"Model" /c:"Size"

:: Get Monitor model name
echo.
echo Checking Monitor information...
wmic desktopmonitor get name /format:list | findstr /i /c:"Name"
