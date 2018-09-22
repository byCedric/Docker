FROM java:alpine

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

ENV SONAR_SCANNER_VERSION 3.2.0.1227
ENV SONAR_URL https://sonarcloud.io

RUN apk add --no-cache git nodejs wget \
	&& wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip \
    && unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION} \
    && cd /usr/bin && ln -s /sonar-scanner-${SONAR_SCANNER_VERSION}/bin/sonar-scanner sonar-scanner \
    && apk del wget

COPY sonar-bitbucket.sh /usr/sbin/sonar-bitbucket
RUN chmod +x /usr/sbin/sonar-bitbucket

CMD ["sh", "-c", "sonar-scanner -Dsonar.host.url=$SONAR_URL -Dsonar.login=$SONAR_TOKEN"]