# Intune Toolkit - Advanced Edition
$logFile = "C:\IntuneToolLog.log"

function Write-Log {
    param ([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp - $Message" | Out-File -Append -FilePath $logFile
}

function Prompt-Log {
    $logToFile = Read-Host "Do you want to log output to file? (Y/N)"
    return $logToFile -match '^[Yy]'
}

function Show-Menu {
    Clear-Host
    Write-Host "Intune endpoints Troubleshooting Tool" -ForegroundColor Cyan
    Write-Host "========================================="
    Write-Host "logFile = C:\IntuneToolLog.log "
    Write-Host "_________________________________________"
    Write-Host "1. Check applied Intune policies"
    Write-Host "2. Check Azure AD Join + MDM Status"
    Write-Host "3. Force compliance sync (IME)"
    Write-Host "4. Generate full Intune diagnostics report"
    Write-Host "5. View latest MDM event logs"
    Write-Host "6. View only MDM *error* logs"
    Write-Host "7. Open Intune Management Extension logs"
    Write-Host "0. Exit"
}

function Check-PolicyRegistry {
    Write-Host "`n Applied Intune Policies:" -ForegroundColor Yellow
    try {
        $policies = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\PolicyManager\Current\Device\*" -ErrorAction Stop
        $policies | Out-Host
        return $policies
    } catch {
        Write-Host "Could not retrieve applied policies." -ForegroundColor Red
    }
}

function Check-AzureADJoin {
    Write-Host "`n🔗 Azure AD + MDM Enrollment Status:" -ForegroundColor Yellow
    $status = dsregcmd /status
    $status | Out-Host
    return $status
}

function Force-ComplianceSync {
    Write-Host "`n Triggering Intune compliance sync..." -ForegroundColor Yellow
    try {
        Start-Process -FilePath "C:\Program Files (x86)\Microsoft Intune Management Extension\Microsoft.Management.Services.IntuneWindowsAgent.exe" `
            -ArgumentList "intunemanagementextension://synccompliance"
        Start-Sleep -Seconds 5
        Write-Host "Sync started. Checking event logs for activity..." -ForegroundColor Gray
        Check-EventLog -filter "compliance"
    } catch {
        Write-Host "Failed to start compliance sync." -ForegroundColor Red
    }
}

function Generate-Diagnostics {
    Write-Host "`n Generating Intune diagnostics report..." -ForegroundColor Yellow
    $outputPath = "C:\IntuneReport.zip"
    mdmdiagnosticstool -out $outputPath
    Write-Host "Report saved to: $outputPath" -ForegroundColor Green
}

function Check-EventLog {
    param (
        [switch]$errorsOnly,
        [string]$filter = ""
    )

    $logName = "Microsoft-Windows-DeviceManagement-Enterprise-Diagnostics-Provider/Operational"

    $exists = Get-WinEvent -ListLog $logName -ErrorAction SilentlyContinue
    if (-not $exists) {
        Write-Host " Event log '$logName' not found." -ForegroundColor Red
        return "Event log not found."
    }

    Write-Host "`n Querying MDM Event Log ($logName):" -ForegroundColor Yellow
    $query = Get-WinEvent -LogName $logName -MaxEvents 50

    if ($filter) {
        $query = $query | Where-Object { $_.Message -like "*$filter*" }
    }
    if ($errorsOnly) {
        $query = $query | Where-Object { $_.LevelDisplayName -eq "Error" }
    }

    if ($query) {
        $output = $query | Select-Object TimeCreated, Id, LevelDisplayName, Message
        $output | Format-List  
        return ($output | Out-String)  
    } else {
        Write-Host "No matching log entries found." -ForegroundColor DarkGray
        return "No matching log entries found."
    }
}


function Open-IMELog {
    $logPath = "C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\IntuneManagementExtension.log"
    if (Test-Path $logPath) {
        notepad $logPath
        Write-Host "logPath: C:\ProgramData\Microsoft\IntuneManagementExtension\Logs\IntuneManagementExtension.log"
    } else {
        Write-Host "Log not found at: $logPath" -ForegroundColor Red
    }
}

function Run-Tool {
    do {
        Show-Menu
        $choice = Read-Host "`nSelect an option (0-7)"
        $logChoice = Prompt-Log

        switch ($choice) {
            1 {
                $output = Check-PolicyRegistry
                if ($logChoice) { Write-Log "Checked applied policies.`n$output" }
            }
            2 {
                $output = Check-AzureADJoin
                if ($logChoice) { Write-Log "Azure AD + MDM status:`n$output" }
            }
            3 {
                Force-ComplianceSync
                if ($logChoice) { Write-Log "Forced compliance sync." }
            }
            4 {
                Generate-Diagnostics
                if ($logChoice) { Write-Log "Generated MDM diagnostics." }
            }
            5 {
                $output = Check-EventLog
                if ($logChoice) { Write-Log "Queried MDM event logs.`n$output" }
            }
            6 {
                $output = Check-EventLog -errorsOnly
                if ($logChoice) { Write-Log "Queried MDM *error* logs.`n$output" }
            }
            7 {
                Open-IMELog
                if ($logChoice) { Write-Log "Opened IME log." }
            }
            0 {
                Write-Host "Exiting..." -ForegroundColor Cyan
                break
            }
            default {
                Write-Host "Invalid choice." -ForegroundColor Red
            }
        }

        Pause
    } while ($choice -ne '0')
}

Run-Tool
