:: A script to run when installing windows Cloud PC managed in Intune.

: : configure windows settings:
start ms-settings:
wuauclt /detectnow /updatenow

: : Power settings (optional)
powercfg -change -monitor-timeout-ac 0
powercfg -change -monitor-timeout-dc 0
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0

: : Show SERIALNUMBER
WMIC BIOS GET SERIALNUMBER

: : more optinal commands:
: : powercfg /list
: : systeminfo

: : run powershell script to get hardware hash for Intune cloud windows installation.
: : run with the pshash.ps1 script in the same directory as this script:
: : the powershell script: https://github.com/mtniehaus/UpdateOS/blob/main/UpdateOS/UpdateOS.ps1
@echo off
setlocal EnableDelayedExpansion

set "ps1_file=D:\hash\pshash.ps1"
set "temp_file=%temp%\temp_ps1.ps1"

(for /f "skip=1 tokens=*" %%a in ('type "%ps1_file%"') do (
    echo %%a
    set /a count+=1
    if !count! equ 27 (
        goto :eof
    )
)) > "%temp_file%"

powershell.exe -ExecutionPolicy Bypass -File "%temp_file%"

: : optional: add Languagehe.
@echo off
powershell.exe -ExecutionPolicy Bypass -File D:\hash\Languagehe.ps1

: : Add .NET Framework 3.5
dism /online /enable-feature /featurename:netfx3
