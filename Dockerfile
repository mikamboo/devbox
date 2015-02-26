FROM ubuntu

MAINTAINER mike@mikangali.com

# Install dev tools
RUN apt-get update && \
	apt-get install -y nodejs npm git git-core \
	python python-dev python-pip python-virtualenv

# Install npm package
RUN npm install -g bower express grunt-cli yo strongloop

EXPOSE 3000 4000 5000 8000 8080 9000 35729 

CMD /bin/bash