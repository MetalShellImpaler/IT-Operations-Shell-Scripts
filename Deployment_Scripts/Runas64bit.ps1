# If running in 32-bit PowerShell on 64-bit Windows, restart as 64-bit
if ($env:PROCESSOR_ARCHITEW6432) {
    $ps64 = "$env:WinDir\SysNative\WindowsPowerShell\v1.0\powershell.exe"
    & $ps64 -NoProfile -ExecutionPolicy Bypass -File "$PSCommandPath"
    exit $LASTEXITCODE
}

# check if Environment is 64BIT.
# $([Environment]::Is64BitProcess)
