# Usage
This script is to shorten the installation process and to expose my local server to be accessible from outside using ssh.

Change with your token
```
ngrok config add-authtoken 2KCGoWYIA8FLKGpeVlXnj2e0fT9_6wWtEHMxiLCo8eCUS8Y9o
```
Run script
> Support amd64 only
```bash
cd script-ngrok
chmod +x install-ngrok.sh
bash install-ngrok.sh
```
Limitation free user is random port, when your server restart, ngrok created new port. But don't worry, ngrok service automatically start when your server start and you just check new port in dashboard https://dashboard.ngrok.com/agents.
