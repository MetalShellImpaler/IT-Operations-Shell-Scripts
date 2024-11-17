# IT-Operations-Shell-Scripts

Welcome to the IT Operations Shell Scripts repository! A collection of PowerShell and CMD scripts is designed to simplify and automate tasks for IT teams navigating the Windows cloud-managed environment, with a keen focus on optimizing workflows within Microsoft Azure, 365, and Intune environments.

# Purpose

The primary goal of these scripts is to empower IT teams to efficiently manage and configure devices using Microsoft Intune, enhancing endpoint management within your organization. Whether you're generating hardware hashes for Intune, retrieving computer names and serial numbers, or speeding up the installation process for new computers, these scripts are here to simplify your workload.

# Features

•	System Information Retrieval: Quickly fetch critical system details like computer names, serial numbers, and more. 
•	Automation: Streamline tasks such as generating hardware hashes for Intune or configuring new systems. 
•	User-Friendly: Plug-and-play scripts that can be run directly from a USB stick. 
•	Customizable: Modify the scripts to fit your unique IT operations needs. 
________________________________________

1. IT Shell Scripts
•	Sysinfo.bat: A script to gather system information for diagnostics or inventory management.
•	GET Computer Name, Serial Number.bat: Fetches and displays the computer name and serial number for quick reference.
•	never sleep.bat: Prevents the system from entering sleep mode.

3. PowerShell-IT-Scripts
•	ADD-Languagehe.ps1: Adds support for Hebrew language settings.
•	Add_Hebrew_keyboard.ps1: Installs and configures a Hebrew keyboard layout.
•	WIN Enterprise MediaCreation.ps1: Facilitates the creation of Windows Enterprise media.
4. install win and upload Hash to Intune
•	CloudBat.bat: Automates tasks during Windows installation for Cloud PCs managed by Intune.
o	Runs PowerShell scripts for hardware hash generation.
o	Simplifies Intune device enrollment.
•	pshash.ps1: Generates hardware hashes and outputs them as CSV files for seamless Intune enrollment.
________________________________________
Usage
1.	Clone or download the repository.
2.	Copy the scripts to a USB drive or a local folder.
3.	Execute the desired script by double-clicking it or running it in the appropriate shell (Command Prompt for .bat files, PowerShell for .ps1 files).
Example Usage Scenarios
•	Plug in a USB stick with the CloudBat.bat and pshash.ps1 scripts, then run them during a new Windows installation to streamline Intune enrollment.

•	Use Sysinfo.bat to gather system information during troubleshooting or inventory tasks.

•	Execute never sleep.bat on a workstation to prevent interruptions during long processes.
________________________________________
Scripts Overview
Sysinfo.bat
Generates and displays essential system information, aiding in diagnostics and reporting.
GET Computer Name, Serial Number.bat
Outputs the computer name and serial number, saving time during inventory checks or device setup.
CloudBat.bat & pshash.ps1
Automates the process of:

•	Generating hardware hashes required for Microsoft Intune.

•	Enrolling devices seamlessly in an enterprise environment.

ADD-Languagehe.ps1 & Add_Hebrew_keyboard.ps1
Useful for organizations or users requiring Hebrew language and keyboard support.
