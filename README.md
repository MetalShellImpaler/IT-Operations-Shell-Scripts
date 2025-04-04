# IT Operations Shell Scripts

<div align="center">
  <img src="https://img.shields.io/github/last-commit/MetalShellImpaler/IT-Operations-Shell-Scripts" alt="GitHub last commit"/>
  <img src="https://img.shields.io/github/repo-size/MetalShellImpaler/IT-Operations-Shell-Scripts" alt="GitHub repo size"/>
  <img src="https://img.shields.io/badge/License-GPL--3.0-blue.svg" alt="License"/>
  <br/><br/>
  <img src="https://raw.githubusercontent.com/PowerShell/PowerShell/master/assets/Powershell_256.png" width="100" alt="PowerShell Logo"/>
  <img src="https://raw.githubusercontent.com/microsoft/fluentui-system-icons/master/assets/Server/SVG/ic_fluent_server_20_regular.svg" width="100" alt="Server Icon"/>
  <img src="https://raw.githubusercontent.com/microsoft/fluentui-system-icons/master/assets/Cloud/SVG/ic_fluent_cloud_20_regular.svg" width="100" alt="Cloud Icon"/>
</div>

<br/>

A comprehensive collection of scripts designed to streamline IT workflows, automate repetitive tasks, and simplify system management. This repository is ideal for IT administrators, technicians, and anyone looking to enhance operational efficiency with minimal effort.
With a keen focus on optimizing workflows within Microsoft Azure, 365, and Intune environments.


## 🚀 Overview

These scripts empower IT teams to efficiently manage and configure devices using Microsoft Intune, enhancing endpoint management within your organization. Whether you're generating hardware hashes for Intune, retrieving computer names and serial numbers, or speeding up the installation process for new computers, these scripts are here to simplify your workload.

## 📁 Repository Structure

```
IT-Operations-Shell-Scripts/
├── Boot to windows enterprise/        # Windows Enterprise deployment tools
├── Diagnostics and Sysinformation/    # System information gathering tools
├── Generate hardware hash and upload it to Intune/  # Intune enrollment automation
├── IT shell-scripts/                  # General purpose IT shell scripts
├── Microsoft Office 365/              # M365 management tools
├── PowerShell-IT-Scripts/             # Advanced PowerShell automation
├── LICENSE
└── README.md
```

## ✨ Key Features

- **System Information Retrieval**: Quickly gather critical details like computer names and serial numbers
- **Intune Integration**: Streamline device enrollment with automated hardware hash generation
- **Automation**: Simplify tasks such as generating hardware hashes for Intune enrollment or configuring system settings
- **User-Friendly**: Designed for easy execution, many scripts can run directly from a USB drive
- **Customizable**: Adapt scripts to your specific IT requirements effortlessly

## 💻 Script Highlights

### Intune Integration
| Script | Description |
|--------|-------------|
| `CloudBat.bat` | Automates Windows Cloud PC installation and runs PowerShell scripts to generate hardware hashes |
| `pshash.ps1` | Generates hardware hash CSV files for Microsoft Intune to simplify device enrollment |


## 📋 Example Usage Scenarios

- **New Device Setup**: Use `CloudBat.bat` and `pshash.ps1` to streamline new device setup with Intune
- **System Troubleshooting**: Run `Sysinfo.bat` to get a quick overview of system information
- **Extended Maintenance**: Execute `never sleep.bat` to prevent devices from entering sleep mode
- **Localization**: Apply `ADD-Languagehe.ps1` for Hebrew language support


  Clone or Download the Repository:
   ```bash
   git clone https://github.com/MetalShellImpaler/IT-Operations-Shell-Scripts.git


## 📜 License

This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html) - see the LICENSE file for details.

---

  ⭐ <b>If you find these scripts useful, please star the repository!</b> ⭐
</div>
