# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 18, 16, 14, 18-bullseye, 16-bullseye, 14-bullseye, 18-buster, 16-buster, 14-buster
ARG VARIANT=16-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-${VARIANT}


##################### install additional OS packages ########################

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
   	&& apt-get -y install --no-install-recommends \
      	# browsers
      	firefox-esr \
      	# cmd tools 
      	tree \
      	vim \
    	curl \
    	wget \
		# libs (tauri)
		libwebkit2gtk-4.0-dev \
    	build-essential \
    	libssl-dev \
    	libgtk-3-dev \
		libayatana-appindicator-dev \
    	librsvg2-dev


############################ global node_modules ############################

RUN su node -c "npm install -g \
   pnpm@7.10.0 \
   firebase-tools@11.2.0 \
   cypress@10.7.0 \
"


############################# install flutter ###############################

RUN git clone https://github.com/flutter/flutter.git -b stable

