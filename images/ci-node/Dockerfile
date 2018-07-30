FROM node:alpine

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN npm install -g npm@latest \
	&& npm set progress=false \
	&& npm cache rm --force
