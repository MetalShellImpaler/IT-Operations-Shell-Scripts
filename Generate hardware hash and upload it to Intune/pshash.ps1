# Generate hardware hash csv file.
# Enable Powershell scripting:
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

#Download the Get-WindowsAutoPilotInfo.ps1 file:
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Save-Script -Name Get-WindowsAutoPilotInfo -Path C:\Users\USERNAME\Downloads
# Or
Save-Script -Name Get-WindowsAutoPilotInfo -Path "C:\Users\$env:USERNAME\Downloads"


# official source: https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo/3.8/Content/Get-WindowsAutopilotInfo.ps1
# On Github: https://github.com/MikePohatu/Get-WindowsAutoPilotInfo/blob/main/Get-WindowsAutoPilotInfo.ps1

# Generate hardware hash to a local disk:
# d:\hash\hash.csv - The CSV file will be stored at this location. 
# With Powershell:
.\Get-WindowsAutoPilotInfo.ps1 -OutputFile "D:\hash\Hash.csv" -Append
# With CMD: 
powershell -noprofile -executionpolicy unrestricted -command d:\hash\Get-WindowsAutopilotInfo.ps1 -OutputFile "D:\hash\Hash.csv" -Append
