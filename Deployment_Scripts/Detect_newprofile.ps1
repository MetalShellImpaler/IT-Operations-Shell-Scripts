# Deployment Script to check if the user's profile is new or not.
# use it in case you want to deploy something only for new enrolled Devices.
# this script is using the  PowerShell command: $profileItem.CreationTime)
# to check if the users profile is new or not.

# $profileItem.CreationTime.ToString("yyyy-MM-dd HH:mm:ss")


param(
    [int]$FirstLoginExperienceHours = 800
)

Write-Host "Profile Age Detection for Deployment Script" -ForegroundColor Cyan
Write-Host "===========================================" -ForegroundColor Cyan

try {
    $userProfilePath = $env:USERPROFILE
    $currentUsername = $env:USERNAME
    
    Write-Host "Current User: $currentUsername" -ForegroundColor Yellow
    Write-Host "Profile Path: $userProfilePath" -ForegroundColor Yellow
    
    # Get profile creation time
    $profileItem = Get-Item $userProfilePath -ErrorAction Stop
    $profileCreationTime = $profileItem.CreationTime
    $currentTime = Get-Date
    
    # Calculate age
    $profileAge = New-TimeSpan -Start $profileCreationTime -End $currentTime
    $profileAgeHours = $profileAge.TotalHours
    
    Write-Host "Profile Created: $($profileCreationTime.ToString('yyyy-MM-dd HH:mm:ss'))" -ForegroundColor Yellow
    Write-Host "Current Time: $($currentTime.ToString('yyyy-MM-dd HH:mm:ss'))" -ForegroundColor Yellow
    Write-Host "Profile Age: $([math]::Round($profileAgeHours, 2)) hours" -ForegroundColor Yellow
    Write-Host "Threshold: $FirstLoginExperienceHours hours" -ForegroundColor Yellow
    
    
    $isNewProfile = $profileAgeHours -le $FirstLoginExperienceHours
    
    Write-Host ""
    if ($isNewProfile) {
        Write-Host "RESULT: NEW PROFILE DETECTED" -ForegroundColor Green -BackgroundColor Black
        Write-Host "This appears to be a first-time login experience." -ForegroundColor Green
        exit 0
    } else {
        Write-Host "RESULT: EXISTING PROFILE" -ForegroundColor Red -BackgroundColor Black
        Write-Host "This is not a new profile." -ForegroundColor Red
        exit 1
    }
    
} catch {
    Write-Host ""
    Write-Host "ERROR: Failed to check profile age" -ForegroundColor Red -BackgroundColor Black
    Write-Host "Details: $($_.Exception.Message)" -ForegroundColor Red
    exit 2
}