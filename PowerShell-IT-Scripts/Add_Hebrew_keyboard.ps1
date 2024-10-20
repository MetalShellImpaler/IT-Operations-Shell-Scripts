$LanguageToAdd = "he-IL"  # Hebrew
$DefaultLanguage = "en-US"  # English

# Current language list for the user
$LanguageList = Get-WinUserLanguageList

# Add Hebrew if it's not already in the language list
if ($LanguageList.LanguageTag -notcontains $LanguageToAdd) {
    Write-Host "Adding Hebrew language features..."
    Add-WindowsCapability -Online -Name "Language.Basic~~~$LanguageToAdd~0.0.1.0" > $null
    Add-WindowsCapability -Online -Name "Language.Handwriting~~~$LanguageToAdd~0.0.1.0" > $null
    Add-WindowsCapability -Online -Name "Language.OCR~~~$LanguageToAdd~0.0.1.0" > $null
}

# Set the default system language to English and ensure Hebrew is available as a keyboard option
# Apply the language settings
$LanguageList.Add($LanguageToAdd)
Set-WinUserLanguageList -LanguageList $LanguageList -Force

# English as the default input method
# Set Hebrew as an additional keyboard layout
Set-WinDefaultInputMethodOverride -InputTip "0409:00000409" 

$KeyboardOptions = $LanguageList | Where-Object { $_.LanguageTag -eq $LanguageToAdd }

if ($KeyboardOptions -ne $null) {
    Write-Host "Setting keyboard options for Hebrew..."
    $KeyboardOptions.InputMethodTips.Clear()
    $KeyboardOptions.InputMethodTips.Add("040D:0000040D") 
    Set-WinUserLanguageList -LanguageList $LanguageList -Force
} else {
    Write-Host "Error: Failed to find Hebrew language entry in the language list."
}

# Make sure the system UI and locale remain in English
Set-WinUILanguageOverride -Language $DefaultLanguage
Set-WinSystemLocale -SystemLocale $DefaultLanguage
Set-Culture $DefaultLanguage

Write-Host "Language settings updated."
