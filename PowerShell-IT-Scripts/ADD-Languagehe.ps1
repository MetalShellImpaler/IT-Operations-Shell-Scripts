$LanguageList = Get-WinUserLanguageList

$LanguageToAdd = "he-IL"  # Hebrew 
if ($LanguageList.LanguageTag -notcontains $LanguageToAdd) {
    $LanguageList.Add($LanguageToAdd)
}

$KeyboardOptions = $LanguageList | Where-Object { $_.LanguageTag -eq $LanguageToAdd }

if ($KeyboardOptions -ne $null) {

    $KeyboardOptions.InputMethodTips.Clear()
    $KeyboardOptions.InputMethodTips.Add("040D:0000040D")  # Hebrew 
    

    Set-WinUserLanguageList -LanguageList $LanguageList -Force
} else {
    Write-Host "Error: Failed to find * language entry in the language list."
}
