:: Diagwinlogs commends :
:: to save output to a specific location: { -output "C:\Users\%username%\" }

:: Power and Battery Diagnostics:

powercfg /energy

powercfg /sleepstudy

powercfg /batteryreport

:: System Performance:

perfmon /report

:: Network Diagnostics:

netsh wlan show wlanreport

:: Disk and Storage Diagnostics:

chkdsk C: /f /r

:: Drivers Diagnostics:

driverquery /v

verifier

:: Windows Update Diagnostics:

Get-WindowsUpdateLog

:: System File Checker utility:

sfc /scannow

::Domain GPO:

gpupdate /force

GPRESULT /r
GPRESULT /H GPReport.html 
:: C:\Windows\System32\GPReport.html

rsop.msc

gpresult /Scope User /v
gpresult /Scope Computer /v
