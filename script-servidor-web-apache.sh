# Script de criação de um servidor web apache 2

#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalado o servidor apache..."
apt-get install apache2 -y

echo "Instalado o unzip..."
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/