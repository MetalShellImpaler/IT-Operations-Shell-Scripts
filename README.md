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


##  Overview

These scripts empower IT teams to efficiently manage and configure devices using Microsoft Intune, enhancing endpoint management within your organization. Whether you're generating hardware hashes for Intune, retrieving computer names and serial numbers, or speeding up the installation process for new computers, these scripts are here to simplify your workload.

## Repository Structure 📁

```
IT-Operations-Shell-Scripts/
├── Boot into Windows Enterprise/      # Windows Enterprise deployment tools
├── Deployment_Scripts/                # Scripts for deploying apps and configuring system settings
├── Diagnostics and Sysinformation/    # System information gathering tools
├── Generate hardware hash and upload it to Intune/  # Intune enrollment automation
├── IT shell-scripts/                  # General purpose IT shell scripts
├── Intune Endpoints Debugging/        # Debug Intune Endpoints scripts
├── Microsoft Office 365/              # M365 management tools
├── PowerShell-IT-Scripts/             # Advanced PowerShell automation
├── XML_Automation                     #
├── LICENSE
└── README.md
```
## Quick Execution with IRM (Invoke-RestMethod) PowerShell

Run scripts directly without downloading scripts or the entire repository:

### Examples

```powershell

# Debug Intune Endpoints
irm "https://raw.githubusercontent.com/MetalShellImpaler/IT-Operations-Shell-Scripts/main/Intune%20Endpoints%20Debugging/Intune-Debug-CLI.ps1" | iex
```
```
# Add Hebrew language support
irm "https://raw.githubusercontent.com/MetalShellImpaler/IT-Operations-Shell-Scripts/main/PowerShell-IT-Scripts/ADD-Languagehe.ps1" | iex
```

## Key Features

- **Application & Settings Deployment** – Automate installation and configuration of apps and system settings.
- **Intune Integration**: Streamline device enrollment with automated hardware hash generation.
- **General IT Operations** – A collection of versatile shell scripts for day-to-day IT management tasks.
- **PowerShell Automation** – Advanced PowerShell scripts to accelerate IT operations and reduce manual effort.
- **Customizable**: Adapt scripts to your specific IT requirements effortlessly.


##  Example Usage Scenarios

- **New Device Setup**: Use `CloudBat.bat` and `pshash.ps1` to streamline new device setup with Intune
- **Intune Debugging** Run `Intune-Debug-CLI.ps1` as an advanced command-line tool for troubleshooting and debugging Intune-managed devices.
- **Force 64-bit Execution**: Use `Runas64bit.ps1` to automatically restart PowerShell in 64-bit mode when launched from a 32-bit environment.
- **Profile Detection for Deployments**: Run `Detect_newprofile.ps1` to determine if a user’s profile is new. Useful for deploying configurations or apps only on freshly enrolled devices.


  Clone or Download the Repository:
   ```
   git clone https://github.com/MetalShellImpaler/IT-Operations-Shell-Scripts.git
   ```

## License

This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html) - see the LICENSE file for details.

---

  ⭐ <b>If you find these scripts useful, please star the repository!</b> ⭐
</div>
