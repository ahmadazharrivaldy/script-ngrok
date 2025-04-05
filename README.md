# Usage

Change with your token
```
ngrok config add-authtoken 2KCGoWYIA8FLKGpeVlXnj2e0fT9_6wWtEHMxiLCo8eCUS8Y9o
```
Run script, automaticaly find your os release and install it.
```bash
cd script-ngrok
chmod +x install-ngrok.sh
bash install-ngrok.sh
````
Move ngrok.service to /etc/systemd/system/ and start it.
```bash
cp ngrok.service /etc/systemd/system/ngrok.service
systemctl enable --now ngrok.service
```
Limitation free user is random port, when your server restart, ngrok created new port. But don't worry, you just check new port in dashboard https://dashboard.ngrok.com/agents.
