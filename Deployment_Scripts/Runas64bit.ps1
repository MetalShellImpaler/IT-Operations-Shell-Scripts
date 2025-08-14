# If running in 32-bit PowerShell on 64-bit Windows, restart as 64-bit
if ($env:PROCESSOR_ARCHITEW6432) {
    $ps64 = "$env:WinDir\SysNative\WindowsPowerShell\v1.0\powershell.exe"
    # Relaunch this script under 64-bit mode
    & $ps64 -NoProfile -ExecutionPolicy Bypass -File "$PSCommandPath"
    # Exit the 32-bit process
    exit $LASTEXITCODE
}

