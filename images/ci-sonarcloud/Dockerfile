FROM java:alpine

LABEL maintainer 'Cedric van Putten <me@bycedric.com>'

ENV SONAR_SCANNER_VERSION 3.2.0.1227
ENV SONAR_URL https://sonarcloud.io

RUN apk add --no-cache wget && \
    wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip && \
    unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION} && \
    cd /usr/bin && ln -s /sonar-scanner-${SONAR_SCANNER_VERSION}/bin/sonar-scanner sonar-scanner && \
    apk del wget

CMD ["sh", "-c", "sonar-scanner -Dsonar.host.url=$SONAR_URL -Dsonar.login=$SONAR_TOKEN"]
