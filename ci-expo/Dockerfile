FROM node:alpine

RUN apk add --no-cache \
		# for React Native bundler (Metro)
		bash \
		# for Semantic Release (Git over SSH)
		git \
		openssh-client \
	&& npm install -g \
		expo-cli \
		npm \
		sonarqube-scanner \
	&& rm -r ~/.npm \
	&& npm set progress=false
