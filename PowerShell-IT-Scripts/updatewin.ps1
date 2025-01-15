#Execution Policy: Unrestricted

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

#Current user only Execution Policy: RemoteSigned

#Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Install-Module PSWindowsUpdate
Add-WUServiceManager -MicrosoftUpdate

Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -Force # optional: -AutoReboot