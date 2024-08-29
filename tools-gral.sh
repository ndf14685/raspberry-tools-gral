#!/bin/bash

# Asegurarse de que el sistema esté actualizado
sudo apt update && sudo apt upgrade -y

# Instalar Docker
sudo apt install -y docker-ce
sudo usermod -aG docker $USER

# Instalar Python (última versión)
sudo apt install -y python3 python3-pip

# Instalar PHP
sudo apt install -y php

# Instalar Node.js y npm
sudo apt install -y nodejs npm

# Instalar Terraform
sudo apt install -y unzip
curl -s https://releases.hashicorp.com/terraform/$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)/terraform_$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)_linux_arm.zip -o terraform.zip
unzip terraform.zip
sudo mv terraform /usr/local/bin/
rm terraform.zip

# Instalar Kubernetes (kubectl)
sudo apt install -y kubelet kubeadm kubectl

# Instalar Git
sudo apt install -y git

# Instalar SQLite y configurar base de datos
sudo apt install -y sqlite3
sqlite3 /tmp/default.db "CREATE TABLE test (id INTEGER PRIMARY KEY, name TEXT);"
sqlite3 /tmp/default.db "CREATE USER 'ndf' IDENTIFIED BY 'ndf';"

echo "Instalación completada."
