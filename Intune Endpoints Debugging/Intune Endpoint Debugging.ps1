# Check Intune policy assignment
dsregcmd /status

# Check applied policies
Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\Current\Device\*"

# Logs related to Intune MDM activities
Get-WinEvent -LogName "Microsoft-Windows-DeviceManagement-Enterprise-Diagnostics-Provider/Operational" -MaxEvents 50 |
Select-Object TimeCreated, Id, LevelDisplayName, Message

# Generate full Intune report
mdmdiagnosticstool -out C:\IntuneReport.zip

# Check IME logs manually
C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\IntuneManagementExtension.log

# Intune Sync
Start-Process -FilePath "C:\Program Files (x86)\Microsoft Intune Management Extension\Microsoft.Management.Services.IntuneWindowsAgent.exe" -ArgumentList "intunemanagementextension://synccompliance"

# local user accounts
Get-CimInstance Win32_UserAccount

