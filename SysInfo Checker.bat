@echo off

echo =============================
echo      System Information  
echo =============================
echo.

@echo off

:: Check TPM 2.0 and its status
echo Checking TPM 2.0...
for /F "tokens=2 delims==" %%i in ('wmic /namespace:\\root\cimv2\Security\MicrosoftTpm path Win32_Tpm get IsEnabled /value ^| findstr /i "IsEnabled"') do set "tpm_status=%%i"
if /I "%tpm_status%"=="TRUE" (
    echo TPM 2.0 is ENABLED
) else (
    echo TPM 2.0 is NOT ENABLED
)

:: Check Secure Boot status
echo.
echo Checking Secure Boot status...
bcdedit /enum firmware | findstr /i "Secure Boot"
if %errorlevel% == 1 (
    echo Secure Boot status: Unsupported or Secure Boot is disabled
) else (
    bcdedit /enum firmware | findstr /i "SecureBoot" | findstr /i "Yes"
    if %errorlevel% == 0 (
        echo Secure Boot status: Enabled
    ) else (
        echo Secure Boot status: Disabled
    )
)

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

