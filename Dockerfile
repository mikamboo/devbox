FROM ubuntu

MAINTAINER mike@mikangali.com

# Install dev tools

# Install Node
RUN apt-get update && \
	apt-get install -y wget && \
	cd /opt && \
	wget http://nodejs.org/dist/v0.12.0/node-v0.12.0-linux-x64.tar.gz && \
	tar -xzf node-v0.12.0-linux-x64.tar.gz && \
	mv node-v0.12.0-linux-x64 node && \
	cd /usr/local/bin && \
	ln -s /opt/node/bin/* . && \
	rm -f /opt/node-v0.12.0-linux-x64.tar.gz 

RUN apt-get update && \
	apt-get install -y \
	git git-core build-essential \
	python python-dev python-pip python-virtualenv

# Install npm package

RUN npm install -g bower && \
	npm install -g express && \
	npm install -g gulp && \
	npm install -g grunt-cli && \
	npm install -g yo && \
	npm install -g generator-meanjs && \
	npm install -g strongloop

EXPOSE 3000 4000 5000 8000 8080 9000 35729 

CMD /bin/bash