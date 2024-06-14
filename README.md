# Nano NetGuard

**Nano NetGuard** is a command-line utility designed for educational purposes, enabling users to perform a variety of actions related to Wi-Fi networks. This tool is intended for legitimate penetration testing, security research, and testing of network devices that you own or have explicit permission to assess.

## Features

- **Scan for Wi-Fi Networks**: Discover nearby Wi-Fi networks and view detailed information about them.
- **Select a Wi-Fi Network for Further Actions**: Choose a specific Wi-Fi network from the scanned list for additional operations.
- **Deauthenticate a Client from a Wi-Fi Network**: Deauthenticate a specific client from the selected Wi-Fi network.
- **Deauthenticate All Clients from a Wi-Fi Network**: Deauthenticate all clients connected to the selected Wi-Fi network.
- **Check Wi-Fi Adapter Status**: Retrieve the current status of the Wi-Fi adapter.
- **Change Wi-Fi Adapter Interface Name**: Modify the interface name of the Wi-Fi adapter.

## Prerequisites

Before using this tool, ensure that you have the following prerequisites:

- Linux environment
- Airodump-ng and Aireplay-ng tools installed
- Proper permissions to execute the script

If you don't have airodump-ng and aireplay-ng installed on your system, you can install them using the following steps:

- **Install aircrack-ng package**:
  - For Debian-based systems, run: `sudo apt-get install aircrack-ng`
  - For Red Hat-based systems, run: `sudo yum install aircrack-ng`

Once the aircrack-ng package is installed, airodump-ng and aireplay-ng should be available on your system.

## Usage

1. Clone the repository or download the script.
2. Ensure that the script has executable permissions (`chmod +x wifideauth.sh`).
3. Run the script using `sudo ./wifideauth.sh`.
4. Follow the on-screen menu prompts to choose the desired actions.

## Legal and Ethical Notice

Unauthorized attacks on devices that you do not own or do not have permission to test are illegal and unethical. Performing such attacks can lead to severe consequences, including legal actions, criminal charges, and penalties. The author of this tool shall not be held responsible for any damages or liabilities caused by the use or misuse of this tool. Always ensure that you have proper authorization and legal permissions before using this tool. Use it responsibly, respect privacy and security, and comply with all applicable laws and regulations.
