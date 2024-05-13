@echo off
set "output_file=D:\Computer Name,Serial Number.txt"
set "computer_name=%COMPUTERNAME%"

:: Check if output file exists, if not, create it with headers
if not exist "%output_file%" (
    echo Computer Name,Serial Number > "%output_file%"
)

:: Get serial number of the computer
for /f "tokens=2 delims== " %%i in ('wmic bios get serialnumber /value ^| findstr /r "[0-9a-zA-Z]"') do (
    set "serial_number=%%i"
)

:: Append computer name and serial number to output file
echo %computer_name%,%serial_number% >> "%output_file%"

echo Information saved to %output_file%
