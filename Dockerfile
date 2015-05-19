FROM node:0.10.38

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
	npm install -g strongloop

# Exposed ports

EXPOSE 22 25 3000 3001 4000 5000 7777 8000 8080 8888 9000 35729 

CMD /bin/bash
