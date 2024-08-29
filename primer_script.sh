#!/bin/bash

# Actualizar e instalar herramientas esenciales
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl gnupg apt-transport-https software-properties-common

# Agregar repositorio de Docker
curl -fsSL https://download.docker.com/linux/raspbian/gpg | sudo apt-key add -
echo "deb [arch=armhf] https://download.docker.com/linux/raspbian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

# Agregar repositorio de Kubernetes
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Actualizar para agregar nuevos repositorios
sudo apt update

echo "Contexto preparado. Ahora ejecute 'tools-gral.sh'."
