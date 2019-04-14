FROM bycedric/ci-node:edge

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache bash git openssh-client \
	&& npm install -g expo-cli@latest \
	&& npm cache rm --force
