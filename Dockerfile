FROM ubuntu

MAINTAINER mike@mikangali.com

# Install dev tools

RUN apt-get update && \
	apt-get install -y nodejs npm git git-core \
	python python-dev python-pip python-virtualenv

# Install npm package

RUN npm install -g bower
RUN npm install -g express
RUN npm install -g gulp
RUN npm install -g grunt-cli
RUN npm install -g yo
RUN npm install -g generator-meanjs
RUN npm install -g strongloop

EXPOSE 3000 4000 5000 8000 8080 9000 35729 

CMD /bin/bash