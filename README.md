# Usage
This script is to shorten the installation process and to expose my local server to be accessible from outside using ssh.

Run script
> Support amd64 only
```bash
cd script-ngrok
chmod +x install-ngrok.sh
bash install-ngrok.sh
```
Fill with your token, you can check on this page https://dashboard.ngrok.com/get-started/setup/linux
```
Enter your ngrok authtoken: YOUR_TOKEN
```
Limitation free user is random port, when ngrok restarted, a new port is created. But don't worry, ngrok service automatically start when your server start and you just check new port in dashboard https://dashboard.ngrok.com/agents.
