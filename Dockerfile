FROM node:0.12.7

MAINTAINER mike@mikangali.com

# Install dev tools

RUN apt-get update && \
	apt-get install -y \
	build-essential \
	python python-dev python-pip python-virtualenv

# Install npm package

RUN npm install -g bower && \
	npm install -g json-server && \
	npm install -g express && \
	npm install -g gulp && \
	npm install -g grunt-cli && \
	npm install -g yo && \
	npm install -g generator-meanjs && \
	npm install -g strongloop && \
	npm install -g pm2 && \
	npm install -g pm2-gui

# Install MeteorJS

RUN curl https://install.meteor.com/ | sh

# Exposed ports

EXPOSE 80 3000 3001 4000 8000 8080 9000 35729

CMD /bin/bash
