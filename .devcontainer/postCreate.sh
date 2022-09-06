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
