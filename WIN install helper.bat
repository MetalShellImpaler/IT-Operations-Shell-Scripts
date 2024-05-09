start ms-settings:
wuauclt /detectnow /updatenow
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
WMIC BIOS GET SERIALNUMBER
powercfg /list
systeminfo

@echo off
setlocal EnableDelayedExpansion

set "ps1_file=D:\hash\autopilot_fill_blanks.ps1"
set "temp_file=%temp%\temp_ps1.ps1"

(for /f "skip=1 tokens=*" %%a in ('type "%ps1_file%"') do (
    echo %%a
    set /a count+=1
    if !count! equ 27 (
        goto :eof
    )
)) > "%temp_file%"

powershell.exe -ExecutionPolicy Bypass -File "%temp_file%"


@echo off
powershell.exe -ExecutionPolicy Bypass -File D:\hash\Languagehe.ps1


dism /online /enable-feature /featurename:netfx3
