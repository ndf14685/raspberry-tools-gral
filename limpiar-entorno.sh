#!/bin/bash

# Actualizar los repositorios de paquetes
sudo apt update

# Desinstalar Docker y Docker Compose
sudo apt remove -y docker-ce docker-ce-cli containerd.io
sudo pip3 uninstall -y docker-compose
sudo rm /usr/local/bin/docker-compose

# Eliminar todos los contenedores, imágenes, volúmenes y redes de Docker
sudo docker system prune -a --volumes -f

# Desinstalar Python y pip
sudo apt remove -y python3 python3-pip

# Desinstalar PHP
sudo apt remove -y php

# Desinstalar Node.js y npm
sudo apt remove -y nodejs npm

# Desinstalar Terraform
sudo rm /usr/local/bin/terraform

# Desinstalar Kubernetes (kubectl)
sudo apt remove -y kubelet kubeadm kubectl

# Desinstalar Git
sudo apt remove -y git

# Desinstalar SQLite
sudo apt remove -y sqlite3

# Desinstalar jq
sudo apt remove -y jq

# Limpiar paquetes innecesarios y dependencias
sudo apt autoremove -y
sudo apt autoclean

# Eliminar configuraciones restantes
sudo rm -rf /etc/docker
sudo rm -rf ~/.docker
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/kubelet
sudo rm -rf /usr/local/bin/kubectl
sudo rm -rf /usr/local/bin/kubeadm
sudo rm -rf /usr/local/bin/kubelet

echo "Limpieza completa. El sistema está ahora en un estado cercano a una instalación limpia de Raspbian."
