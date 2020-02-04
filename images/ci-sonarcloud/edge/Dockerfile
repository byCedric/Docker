FROM openjdk:13-alpine

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

ENV SONAR_SCANNER_VERSION 4.2.0.1873
ENV SONAR_URL https://sonarcloud.io

RUN apk add --no-cache git nodejs nodejs-npm wget \
	# required to avoid unset root issue https://stackoverflow.com/questions/52196518/could-not-get-uid-gid-when-building-node-docker#answer-52196681
	&& npm config set unsafe-perm true \
	&& npm install --global typescript \
	&& wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip \
	&& unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip \
	&& cd /usr/bin && ln -s /sonar-scanner-${SONAR_SCANNER_VERSION}/bin/sonar-scanner sonar-scanner \
	&& apk del --no-cache wget

COPY sonar-bitbucket.sh /usr/sbin/sonar-bitbucket
RUN chmod +x /usr/sbin/sonar-bitbucket

ENV NODE_PATH "/usr/lib/node_modules/"

CMD ["sh", "-c", "git fetch; sonar-scanner -Dsonar.host.url=$SONAR_URL -Dsonar.login=$SONAR_TOKEN"]
