# SystemGuardian
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT) 

The name "SystemGuardian" conveys a sense of protection and vigilance over the system. SystemGuardian is a user-friendly system maintenance script that automates essential tasks to keep your Linux-based system up-to-date, optimized, and secure. It implies that the script serves as a guardian, ensuring the system's health and security through updates, cleanup, and other processes. 


## Features

- **Automatic Package Update**: SystemGuardian automatically updates the package lists, ensuring your system has access to the latest software updates and security patches.
- **Full System Upgrade**: It performs a full system upgrade, applying the latest updates to your operating system, installed software, and libraries.
- **Package Cleanup**: SystemGuardian removes unused packages from your system, freeing up valuable disk space and enhancing system performance.
- **Clear Package Cache**: It cleans the package cache, reclaiming disk space occupied by downloaded package files.
- **Unnecessary Data Removal**: SystemGuardian clears unnecessary data, such as temporary files, cache, and logs, to optimize your system's storage and improve efficiency.
- **Intelligent Process Killing**: The script identifies and terminates specific processes that could interfere with the update process, ensuring smooth execution.
- **System Restart Requirement**: SystemGuardian checks if a system restart is required after performing upgrades, alerting you to take necessary action.
- **Disk Space Usage Analysis**: It provides a detailed analysis of your system's disk space usage, helping you identify space-consuming files and directories.
- **Colorful and Informative Output**: SystemGuardian presents its progress and results in a visually appealing format, making it easy to understand the actions taken.

## Prerequisites

- **Linux-based Operating System**: SystemGuardian is designed to work with Linux-based systems such as Ubuntu, Debian, CentOS, and more.
- **Bash Shell**: Ensure that your system has the Bash shell installed, as it is required for executing the script.
- **VMware Workstation** (Optional): If you're running the script within a virtual machine managed by VMware Workstation, make sure you have VMware Workstation installed and properly configured.
- **NVIDIA GPU with Appropriate Drivers** (Optional): If your system has an NVIDIA GPU and you want to utilize it for GPU-intensive tasks, ensure you have the appropriate NVIDIA drivers installed.

## Usage

1. **Download the Script**: Clone the repository or download the script directly from [here](systemguardian.sh).

2. **Make the Script Executable**: Open a terminal and navigate to the directory where you downloaded the script. Run the following command to make it executable:
   ```shell
   chmod +x systemguardian.sh

