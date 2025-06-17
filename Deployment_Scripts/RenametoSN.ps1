# Deployment Script: Rename Device to Serial Number
# Use this script to standardize device names by setting each computer's name to its BIOS serial number.
# Ideal for Windows deployments managed through Intune or Microsoft 365.

$currentName = $env:COMPUTERNAME

$serialNumber = (Get-WmiObject -Class Win32_BIOS).SerialNumber.Trim()
# Optional
$serialNumber = $serialNumber -replace '[^a-zA-Z0-9\-]', '-'

if ($currentName -ne $serialNumber) {
    try {
        Rename-Computer -NewName $serialNumber -Force -ErrorAction Stop
        Write-Host "Computer name changed to $serialNumber."

        # Option 1: Automatically restart
        Restart-Computer -Force

        # Option 2: Ask the user before restarting
        # Uncomment the lines below to enable user prompt instead of automatic restart
        # $response = Read-Host "Do you want to restart the computer now? (Y/N)"
        # if ($response -match '^[Yy]') {
        #     Restart-Computer -Force
        # } else {
        #     Write-Host "Restart the computer later to apply the name change."
        # }

    } catch {
        Write-Error "Failed to rename computer: $_"
    }
} else {
    Write-Host "Computer name is already set to serial number: $serialNumber"
}


