FROM ubuntu

MAINTAINER mike@mikangali.com

# Install dev tools

RUN curl -sL https://deb.nodesource.com/setup | sudo bash - && \
	apt-get update && \
	apt-get install -y nodejs \
	git git-core build-essential \
	python python-dev python-pip python-virtualenv

# Install npm package

RUN npm install -g bower 	 		&& \
	npm install -g express 	 		&& \
	npm install -g gulp 	 		&& \
	npm install -g grunt-cli 		&& \
	npm install -g yo 		 		&& \
	npm install -g generator-meanjs && \
	npm install -g strongloop

EXPOSE 3000 4000 5000 8000 8080 9000 35729 

CMD /bin/bash