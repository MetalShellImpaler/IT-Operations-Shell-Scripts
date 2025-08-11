powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0
powercfg /change hibernate-timeout-ac 0
powercfg /change hibernate-timeout-dc 0
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e seconds
powercfg /SETACVALUEINDEX SCHEME_CURRENT 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e seconds


:: additional options:
powercfg /setacvalueindex SCHEME_CURRENT SUB_VIDEO VIDEOIDLE 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_VIDEO VIDEOIDLE 0
powercfg /setacvalueindex SCHEME_CURRENT SUB_DISK DISKIDLE 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_DISK DISKIDLE 0
powercfg /setacvalueindex SCHEME_CURRENT SUB_DESKTOP DESKTOP_SLIDESHOW 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_DESKTOP DESKTOP_SLIDESHOW 0

::Low/Critical battery
powercfg /setacvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONLOW 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONLOW 0
powercfg /setacvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONCRIT 0
powercfg /setdcvalueindex SCHEME_CURRENT SUB_BATTERY BATACTIONCRIT 0

::PCI Express
powercfg /setacvalueindex SCHEME_CURRENT 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0
powercfg /setdcvalueindex SCHEME_CURRENT 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0

powercfg /setactive SCHEME_CURRENT





