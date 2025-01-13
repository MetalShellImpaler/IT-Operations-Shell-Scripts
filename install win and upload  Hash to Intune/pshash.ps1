# Generate hardware hash csv file.
# Enable script
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

#Converts serial number to string variable

# official source: https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo/3.8/Content/Get-WindowsAutopilotInfo.ps1
# On Github:  https://github.com/MikePohatu/Get-WindowsAutoPilotInfo/blob/main/Get-WindowsAutoPilotInfo.ps1
# Hash
# d:\hash\hash.csv - The CSV file will be stored at this location. 
# From Powershell:
.\Get-WindowsAutoPilotInfo.ps1 -OutputFile "D:\hash\rr\DeviceHash.csv" -Append
# From CMD: 
powershell -noprofile -executionpolicy unrestricted -command d:\hash\Get-WindowsAutopilotInfo.ps1 -OutputFile "D:\hash\Hash.csv" -Append
