#!/bin/sh
CMD="sonar-scanner"
HOST="${SONAR_HOST:-https://sonarcloud.io}"

if [ ! -z "$SONAR_TOKEN" ]; then
	CMD="$CMD -Dsonar.login='$SONAR_TOKEN'"
else
	echo "SonarCloud token not set, please define \$SONAR_TOKEN variable."
	exit 1
fi

if [ ! -z "$HOST" ]; then
	CMD="$CMD -Dsonar.host.url='$HOST'"
fi

if [ ! -z "$SONAR_ORGANIZATION" ]; then
	CMD="$CMD -Dsonar.organization='$SONAR_ORGANIZATION'"
fi

if [ ! -z "$SONAR_PROJECT" ]; then
	CMD="$CMD -Dsonar.project='$SONAR_PROJECT'"
fi

eval "$CMD $@"
