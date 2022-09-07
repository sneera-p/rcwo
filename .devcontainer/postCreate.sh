# !/bin/bash

pwd;

############## install node packages ################

# pnpm install;
# pnpm cypress install;

################### update rust #####################

# rustup default nightly;
# rustup update;

################## install flutter ##################

# export PATH="$PATH:/flutter/bin";
echo "export PATH=\"$PATH:/flutter/bin\"" >> ~/.bashrc;
/flutter/bin/flutter;

################# install browsers ##################

# 1. microsoft edge
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/;
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list';
sudo rm microsoft.gpg;

# 2. brave
# sudo apt install apt-transport-https curlRUN; 
# sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpgRUN;
# echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.listRUN; 

# install
sudo apt update;
sudo apt install chromium firefox-esr microsoft-edge-stable -y;

exit 0;