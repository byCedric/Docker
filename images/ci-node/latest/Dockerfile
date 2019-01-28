FROM node:10-alpine

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache git \
	&& npm install -g npm@6 \
	&& npm set progress=false \
	&& npm cache rm --force
