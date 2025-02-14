#!/bin/bash

# Function to install Ngrok on Ubuntu/Debian
install_ngrok_debian() {
    echo "Installing Ngrok on Ubuntu/Debian..."
    curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
        | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
        && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
        | sudo tee /etc/apt/sources.list.d/ngrok.list \
        && sudo apt update \
        && sudo apt install ngrok
}

# Function to install Ngrok on CentOS/Fedora/RHEL
install_ngrok_centos() {
    echo "Installing Ngrok on CentOS/Fedora/RHEL..."
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
    sudo tar -xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin
}

# Detect the operating system using /etc/os-release
os_name=$(cat /etc/os-release | grep ^ID= | cut -d'=' -f2 | tr -d '"')

if [[ "$os_name" == "ubuntu" || "$os_name" == "debian" ]]; then
    install_ngrok_debian
elif [[ "$os_name" == "centos" || "$os_name" == "fedora" || "$os_name" == "rhel" ]]; then
    install_ngrok_centos
else
    echo "Unsupported operating system."
    exit 1
fi

# Add Ngrok auth token
ngrok config add-authtoken 2KCGoWYIA8FLKGpeVlXnj2e0fT9_6wWtEHMxiLCo8eCUS8Y9o

echo "Ngrok installation and configuration complete!"
