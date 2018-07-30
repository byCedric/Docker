FROM bycedric/ci-node

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

RUN apk add --no-cache \
		# for React Native bundler (Metro)
		bash \
		# for Semantic Release (Git over SSH)
		git \
		openssh-client \
	&& npm install -g expo-cli@latest \
	&& npm cache rm --force
