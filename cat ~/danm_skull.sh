pkg update && pkg upgrade -y
pkg install bash curl nmap -y
nano danm_skull.sh#!/bin/bash
clear
echo "================================================"
echo "          💀 DANM SKULL v1.0 💀                "
echo "================================================"
echo "1. Scan de Portas (Nmap)"
echo "2. Extrair IP e Info do Alvo (Curl)"
echo "3. Ver meu IP Público"
echo "4. Sair"
echo "================================================"
read -p "Escolha uma opção: " opt

case $opt in
  1)
    read -p "Digite o IP ou domínio do alvo: " target
    nmap -sV "$target"
    ;;
  2)
    read -p "Digite a URL (ex: google.com): " url
    curl -I "http://$url"
    ;;
  3)
    curl ifconfig.me
    ;;
  4)
    exit
    ;;
  *)
    echo "Opção inválida!"
    ;;
esac
chmod +x danm_skull.sh
./danm_skull.sh
cd ~
./danm_skull.sh
