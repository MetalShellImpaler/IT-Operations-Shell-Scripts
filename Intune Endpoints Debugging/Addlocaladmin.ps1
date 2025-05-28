# Add user to the administrators group in an Intune\365 windows PC\Laptop
# Open Powershell as admin and run this command: 
Add-LocalGroupMember -Group "administrators" -Member "AzureAD\userName@domainname.com"