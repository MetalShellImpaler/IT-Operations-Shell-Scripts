#Enable script
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
#Get serial number
$SN = Get-WmiObject win32_bios | select Serialnumber
#Converts serial number to string variable
$SN = [string]$SN


<#
Get the station serial number object and only extract the required data from it (I.E, the chars of the serial number itself)
#>
$Position = $SN.IndexOf("=")
$SN = $SN.Substring(($Position+1))
$SN_String = $SN.Remove(8,1)
$SN_String = $SN_String+'.csv'

#Get USB drive letter
#$USB_Drive_Ltr = gwmi win32_diskdrive | ?{$_.interfacetype -eq "USB"} | %{gwmi -Query "ASSOCIATORS OF {Win32_DiskDrive.DeviceID=`"$($_.DeviceID.replace('\','\\'))`"} WHERE AssocClass = Win32_DiskDriveToDiskPartition"} |  %{gwmi -Query "ASSOCIATORS OF {Win32_DiskPartition.DeviceID=`"$($_.DeviceID)`"} WHERE AssocClass = Win32_LogicalDiskToPartition"} | %{$_.deviceid}

#Hash
powershell -noprofile -executionpolicy unrestricted -command d:\hash\autopilot.ps1 -computername $env:COMPUTERNAME -outputfile d:\hash\hash.csv -append #use USB path