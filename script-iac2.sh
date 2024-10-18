#! /bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/arrojo21/linux-projeto1-iac/arquive/refs/heads/main.zip
unzip main.zip
cd linux-projeto1-iac
cp -R * /var/www.html/
