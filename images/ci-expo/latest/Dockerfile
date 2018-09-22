FROM bycedric/ci-node

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache bash git openssh-client \
	&& npm install -g expo-cli@2 \
	&& npm cache rm --force
