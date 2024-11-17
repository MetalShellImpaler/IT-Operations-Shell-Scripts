# IT-Operations-Shell-Scripts

Welcome to the IT Operations Shell Scripts repository! A collection of PowerShell and CMD scripts is designed to simplify and automate tasks for IT teams navigating the Windows cloud-managed environment, with a keen focus on optimizing workflows within Microsoft Azure, 365, and Intune environments.

# Purpose

The primary goal of these scripts is to empower IT teams to efficiently manage and configure devices using Microsoft Intune, enhancing endpoint management within your organization. Whether you're generating hardware hashes for Intune, retrieving computer names and serial numbers, or speeding up the installation process for new computers, these scripts are here to simplify your workload.

📋 Features
•	System Information Retrieval: Quickly gather essential system details like computer names and serial numbers.
•	Automation: Streamline tasks such as hardware hash generation for Intune or configuring system settings.
•	User-Friendly Design: Plug-and-play scripts that can be executed directly from a USB drive.
•	Customizable and Flexible: Easily adapt scripts to suit your specific IT needs.
________________________________________
📂 Folder Structure
1. IT Shell Scripts
•	Sysinfo.bat: Collects and displays comprehensive system information for diagnostics or inventory.
•	GET Computer Name, Serial Number.bat: Fetches and displays the computer name and serial number.
•	never sleep.bat: Prevents the system from entering sleep mode to avoid interruptions during critical tasks.
2. PowerShell-IT-Scripts
•	ADD-Languagehe.ps1: Adds Hebrew language support to Windows.
•	Add_Hebrew_keyboard.ps1: Configures the Hebrew keyboard layout on the system.
•	WIN Enterprise MediaCreation.ps1: Creates Windows Enterprise media for deployment.
3. Install Win and Upload Hash to Intune
•	CloudBat.bat:
o	Automates the installation process for Windows Cloud PCs managed in Intune.
o	Runs PowerShell scripts to generate hardware hashes for Intune enrollment.
o	Works seamlessly with the pshash.ps1 script.
•	pshash.ps1: Generates hardware hash files in CSV format for easy device enrollment in Intune.
________________________________________
🚀 Usage
1.	Download or Clone the Repository:
git clone https://github.com/MetalShellImpaler/IT-Operations-Shell-Scripts.git  
2.	Run the Scripts:
o	Copy the desired script to a USB drive or local folder.
o	Execute batch files (.bat) in the Command Prompt or double-click them.
o	Execute PowerShell scripts (.ps1) in PowerShell with appropriate permissions.
Example Scenarios
•	Use CloudBat.bat and pshash.ps1 during new device setups to automate Intune enrollment.
•	Run Sysinfo.bat to quickly gather detailed system information for troubleshooting or audits.
•	Apply never sleep.bat to prevent devices from sleeping during long-running tasks.
________________________________________
📜 Scripts Overview
Sysinfo.bat
•	Collects and displays essential system details, making diagnostics and reporting simple and efficient.
GET Computer Name, Serial Number.bat
•	Outputs the computer name and serial number for inventory or setup purposes.
CloudBat.bat & pshash.ps1
•	Automate hardware hash generation and streamline Microsoft Intune device enrollment.
ADD-Languagehe.ps1 & Add_Hebrew_keyboard.ps1
•	Add Hebrew language and keyboard support for localized configurations.

ADD-Languagehe.ps1 & Add_Hebrew_keyboard.ps1
Useful for organizations or users requiring Hebrew language and keyboard support.
