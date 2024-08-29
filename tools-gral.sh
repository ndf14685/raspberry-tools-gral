#!/bin/bash

# Asegurarse de que el sistema esté actualizado
sudo apt update && sudo apt upgrade -y

# Instalar Docker
sudo apt install -y docker-ce
sudo usermod -aG docker $USER

# Instalar Docker Compose (Método recomendado por qbee.io)
DOCKER_COMPOSE_VERSION=2.20.2  # Usa la versión estable más reciente disponible en qbee.io
sudo apt install -y libffi-dev libssl-dev
sudo apt install -y python3 python3-pip
sudo pip3 install docker-compose=="$DOCKER_COMPOSE_VERSION"

# Verificar la instalación de Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose no se pudo instalar correctamente."
    exit 1
fi

# Instalar Python (última versión)
sudo apt install -y python3 python3-pip

# Instalar PHP
sudo apt install -y php

# Instalar Node.js y npm
sudo apt install -y nodejs npm

# Instalar jq para manejar JSON
sudo apt install -y jq

# Instalar Terraform
sudo apt install -y unzip
TERRAFORM_VERSION=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)
curl -O "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_arm.zip"
unzip terraform_${TERRAFORM_VERSION}_linux_arm.zip
sudo mv terraform /usr/local/bin/
rm terraform_${TERRAFORM_VERSION}_linux_arm.zip

# Instalar Kubernetes (kubectl)
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-bullseye main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install -y kubelet kubeadm kubectl

# Instalar Git
sudo apt install -y git

# Instalar SQLite y configurar base de datos
sudo apt install -y sqlite3
sqlite3 /tmp/default.db "CREATE TABLE IF NOT EXISTS test (id INTEGER PRIMARY KEY, name TEXT);"

echo "Instalación completada."
