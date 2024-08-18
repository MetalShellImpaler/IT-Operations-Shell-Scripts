#Enable script
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
#Get serial number
$SN = Get-WmiObject win32_bios | select Serialnumber
#Converts serial number to string variable
$SN = [string]$SN
$Position = $SN.IndexOf("=")
$SN = $SN.Substring(($Position+1))
$SN_String = $SN.Remove(8,1)
$SN_String = $SN_String+'.csv'
#Hash
powershell -noprofile -executionpolicy unrestricted -command d:\hash\autopilot.ps1 -computername $env:COMPUTERNAME -outputfile d:\hash\hash.csv -append #use USB path