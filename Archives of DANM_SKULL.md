# Danm_SKULL-v1.0
(New program For Termux)

pkg update && pkg upgrade -y
pkg install bash curl nmap -y

nano danm_skull.sh

#!/bin/bash
clear
echo "================================================"
echo "          💀 DANM SKULL v1.0 💀                "
echo "================================================"
echo "1. Port Scan (Nmap)"
echo "2. Extract IP and Target Info (Curl)"
echo "3. Check My Public IP"
echo "4. Exit"
echo "================================================"
read -p "Choose an option: " opt

case $opt in
  1)
    read -p "Enter the target IP or domain: " target
    nmap -sV "$target"
    ;;
  2)
    read -p "Enter the URL (e.g., google.com): " url
    curl -I "http://$url"
    ;;
  3)
    curl ifconfig.me
    ;;
  4)
    exit
    ;;
  *)
    echo "Invalid option!"
    ;;
esac

chmod +x danm_skull.sh
./danm_skull.sh

cd ~
./danm_skull.sh
