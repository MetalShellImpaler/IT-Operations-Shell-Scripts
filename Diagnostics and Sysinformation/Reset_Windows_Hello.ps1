# Reset Windows Hello (NGC Folder Reset)
net stop WbioSrvc

takeown /f C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\NGC /r /d y
icacls C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\NGC /grant administrators:F /t

Remove-Item -Path "C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\NGC\*" -Recurse -Force

net start WbioSrvc

Restart-Computer