# download MediaCreationTool
# OPEN Admin Powershell and CD to MediaCreationTool.exe location.

# /Retail
#This option is used for retail versions of Windows. Retail licenses are typically purchased by individual users or small businesses. 
#They can be transferred to another computer if needed. This is the standard version you would buy from a store or online.

.\MediaCreationTool_Win11_23H2.exe /Eula Accept /Retail /MediaArch x64 /MediaLangCode en-US /MediaEdition Enterprise

#/Volume
#This option is used for volume licensing, which is typically used by larger organizations, businesses, or educational institutions. 
#Volume licenses allow multiple installations with a single product key and are managed through a central licensing server. 
#These licenses are not transferable to another organization or individual.

.\MediaCreationTool_Win11_23H2.exe /Eula Accept /Volume /MediaArch x64 /MediaLangCode en-US /MediaEdition Enterprise

#enter key
# for example: NPPR9-FWDCX-D2C8J-H872K-2YT43
