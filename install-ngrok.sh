#!/bin/bash

echo "Downloading ngrok..."
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

echo "Extracting and installing ngrok..."
sudo tar -xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

read -p "Enter your ngrok authtoken: " NGROK_AUTHTOKEN

echo "Configuring ngrok with authtoken..."
ngrok config add-authtoken "$NGROK_AUTHTOKEN"

echo "Starting ngrok..."
sudo cp ngrok.service /etc/systemd/system/ngrok.service
sudo systemctl enable --now ngrok.service
