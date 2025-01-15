#Execution Policy: Unrestricted

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

#Current user only Execution Policy: RemoteSigned

#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

Install-Module PSWindowsUpdate
Add-WUServiceManager -MicrosoftUpdate

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll  # optional: -AutoReboot
