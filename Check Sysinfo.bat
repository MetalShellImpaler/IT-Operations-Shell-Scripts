@echo off

echo =============================
echo      System Information  
echo =============================
echo.

@echo off

:: Check TPM 2.0 status using PowerShell Get-Tpm command
echo Checking TPM 2.0...
powershell -Command "if ((Get-Tpm).TpmReady) { Write-Host 'TPM 2.0 is ENABLED' } else { Write-Host 'TPM 2.0 is NOT ENABLED' }"

:: Check TPM version using PowerShell
echo Checking TPM version...
powershell -Command "(Get-WmiObject -Namespace 'Root\CIMv2\Security\MicrosoftTpm' -Class Win32_Tpm).SpecVersion"

:: Check Secure Boot status using PowerShell Confirm-SecureBootUEFI command
echo.
echo Checking Secure Boot status...
powershell -Command "if (Confirm-SecureBootUEFI) { Write-Host 'Secure Boot is ENABLED' } else { Write-Host 'Secure Boot is DISABLED or unsupported' }"

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
