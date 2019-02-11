FROM docker:stable

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache bash curl git nodejs nodejs-npm \
	&& npm install -g npm@latest \
	&& npm set progress=false \
	&& npm cache rm --force \
	&& curl https://cli-assets.heroku.com/install.sh | sh
