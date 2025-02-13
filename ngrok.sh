#curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
#	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
#	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
#	| sudo tee /etc/apt/sources.list.d/ngrok.list \
#	&& sudo apt update \
#	&& sudo apt install ngrok

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
sudo tar -xvzf ~/Downloads/ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

ngrok config add-authtoken 2KCGoWYIA8FLKGpeVlXnj2e0fT9_6wWtEHMxiLCo8eCUS8Y9o
