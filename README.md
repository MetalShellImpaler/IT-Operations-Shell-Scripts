# IT Operations Shell Scripts  

A comprehensive collection of scripts designed to streamline IT workflows, automate repetitive tasks, and simplify system management. This repository is ideal for IT administrators, technicians, and anyone looking to enhance operational efficiency with minimal effort.
With a keen focus on optimizing workflows within Microsoft Azure, 365, and Intune environments.

# Purpose

The primary goal of these scripts is to empower IT teams to efficiently manage and configure devices using Microsoft Intune, enhancing endpoint management within your organization. Whether you're generating hardware hashes for Intune, retrieving computer names and serial numbers, or speeding up the installation process for new computers, these scripts are here to simplify your workload.

---

## 📋 Features  
- **System Information Retrieval:** Quickly gather critical details like computer names and serial numbers.  
- **Automation:** Simplify tasks such as generating hardware hashes for Intune enrollment or configuring system settings.  
- **User-Friendly:** Designed for easy execution, these scripts can run directly from a USB drive.  
- **Customizable:** Adapt scripts to your specific IT requirements effortlessly.  

---

## 📂 Repository Structure  

### **IT Shell Scripts**  
Batch scripts for quick and efficient system management:  
- **`Sysinfo.bat`**: Displays detailed system information for troubleshooting or inventory.  
- **`GET Computer Name, Serial Number.bat`**: Fetches the computer name and serial number for device tracking.  
- **`never sleep.bat`**: Prevents the system from entering sleep mode during extended tasks.  

### **PowerShell-IT-Scripts**  
PowerShell scripts for advanced configuration and setup:  
- **`ADD-Languagehe.ps1`**: Adds Hebrew language support to Windows.  
- **`Add_Hebrew_keyboard.ps1`**: Configures the Hebrew keyboard layout.  
- **`WIN Enterprise MediaCreation.ps1`**: Automates the creation of Windows Enterprise installation media.  

### **Install Win and Upload Hash to Intune**  
Scripts to streamline Windows installation and device enrollment in Intune:  
- **`CloudBat.bat`**:  
  - Automates Windows Cloud PC installation.  
  - Runs PowerShell scripts to generate hardware hashes for Intune enrollment.  
  - Designed to work seamlessly with `pshash.ps1`.  
- **`pshash.ps1`**:  
  - Generates hardware hash CSV files for Microsoft Intune.  
  - Simplifies device enrollment and management processes.  

---

## 🚀 How to Use  

1. **Clone or Download the Repository:**  
   ```bash  
   git clone https://github.com/MetalShellImpaler/IT-Operations-Shell-Scripts.git  

2. ## 🚀 Run the Scripts  

### Batch Files (`.bat`)  
- Double-click to execute or run in Command Prompt.  

### PowerShell Scripts (`.ps1`)  
- Open PowerShell and run with the appropriate permissions.  

---

## 📋 Example Usage Scenarios  

- **Use `CloudBat.bat` and `pshash.ps1`:** Streamline new device setup with Intune.  
- **Run `Sysinfo.bat`:** Get a quick overview of system information during troubleshooting.  
- **Execute `never sleep.bat`:** Prevent devices from sleeping during lengthy operations.  

---

## 🛠️ Script Details  

### **Sysinfo.bat**  
- Displays system information such as OS version, architecture, and device specifications.  

### **GET Computer Name, Serial Number.bat**  
- Outputs the device’s computer name and serial number for easy identification.  

### **CloudBat.bat & pshash.ps1**  
- Automate hardware hash generation and simplify Microsoft Intune device enrollment processes.  

### **ADD-Languagehe.ps1 & Add_Hebrew_keyboard.ps1**  
- Add Hebrew language support and keyboard layouts, perfect for localized configurations.  
