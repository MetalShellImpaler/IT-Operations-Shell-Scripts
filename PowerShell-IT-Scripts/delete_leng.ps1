$LanguageList = Get-WinUserLanguageList

# Remove language if it exists
$LanguageToRemove = "he-IL"  # Hebrew for example
if ($LanguageList.LanguageTag -contains $LanguageToRemove) {
    $LanguageList.RemoveAll({ $_.LanguageTag -eq $LanguageToRemove })
}

Set-WinUserLanguageList -LanguageList $LanguageList -Force
