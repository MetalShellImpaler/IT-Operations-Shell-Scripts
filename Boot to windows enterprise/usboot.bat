:: Create a bootable  drive with RecoveryDrive.exe

RecoveryDrive.exe
:: Don't select the option to back up system files.

:: Mount the ISO file in file explorer
:: Move the iso files to a diffrent location.

:: split the WIM file for fat32 compatibility
Dism /Split-Image /ImageFile:C:\FILES\LOCATION\sources\install.wim /SWMFile:C:\FILES\LOCATION\files\sources\install.swm /FileSize:3800

:: Copy the files from your the folder to the bootable USB drive.
xcopy C:\win_ent\files D:\ /E /H /C /I /Y

:: Or

robocopy C:\win_ent\files D:\ /E /Z /FFT /DCOPY:T /COPY:DAT
