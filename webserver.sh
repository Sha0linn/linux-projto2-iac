#!/bin/bash

echo "Atualizando servidor..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando servidor web e unzip..."
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "Baixando aplicacao do github e copiando para /var/www/html..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "---------------------"
echo "_PROGRAMA_FINALIZADO_"
echo "---------------------"
