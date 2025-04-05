#!/bin/bash

echo "Downloading ngrok..."
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

echo "Extracting and installing ngrok..."
sudo tar -xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

echo "Configuring ngrok with authtoken..."
ngrok config add-authtoken 2KCGoWYIA8FLKGpeVlXnj2e0fT9_6wWtEHMxiLCo8eCUS8Y9o

echo "Starting ngrok..."
cp ngrok.service /etc/systemd/system/ngrok.service
systemctl enable --now ngrok.service
