:: A script to run when installing windows Cloud PC managed in Intune.
:: Generate hardware hash for Intune.

: : configure windows settings:
start ms-settings:

::Update windows:

:: run "updatewin.ps1" to update windows.
:: https://github.com/MetalShellImpaler/IT-Operations-Shell-Scripts/blob/main/PowerShell-IT-Scripts/updatewin.ps1
powershell.exe -ExecutionPolicy Bypass -File D:\..\updatewin.ps1

: : Power settings (optional)
powercfg -change -monitor-timeout-ac 0
powercfg -change -monitor-timeout-dc 0
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
::optional:
::powercfg /change hibernate-timeout-ac 0
::powercfg /change hibernate-timeout-dc 0
::powercfg /SETDCVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e seconds
::powercfg /SETACVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e seconds

: : Show SERIALNUMBER
WMIC BIOS GET SERIALNUMBER

: : more optinal commands:
: : powercfg /list
: : systeminfo

: : run powershell script to generate hardware hash for Intune cloud windows installation.
: : run with the pshash.ps1 and Get-WindowsAutopilotInfo.ps1 scripts.

:: Download Get-WindowsAutoPilotInfo.ps1 
:: official source: https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo/3.8/Content/Get-WindowsAutopilotInfo.ps1
:: On Github:  https://github.com/MikePohatu/Get-WindowsAutoPilotInfo/blob/main/Get-WindowsAutoPilotInfo.ps1
@echo off
:: "d:\hash\hash.csv" - The CSV file will be stored at this location. 
powershell -noprofile -executionpolicy unrestricted -command d:\hash\Get-WindowsAutopilotInfo.ps1 -OutputFile "D:\hash\Hash.csv" -Append

:: Confirm-SecureBoot
powershell -Command "Confirm-SecureBootUEFI"
powershell -Command "if (Confirm-SecureBootUEFI) { Write-Host 'Secure Boot is ENABLED' } else { Write-Host 'Secure Boot is DISABLED' }"

:: Confirm-TPM:
powershell -Command "(Get-Tpm).TpmReady"
powershell -Command "if ((Get-Tpm).TpmReady) { Write-Host 'TPM 2.0 is ENABLED' } else { Write-Host 'TPM 2.0 is NOT ENABLED' }"
powershell -Command "(Get-WmiObject -Namespace 'Root\CIMv2\Security\MicrosoftTpm' -Class Win32_Tpm).SpecVersion"


: : optional: add Language.
@echo off
powershell.exe -ExecutionPolicy Bypass -File D:\..\Language.ps1

: : Add .NET Framework 3.5
dism /online /enable-feature /featurename:netfx3
