#!/bin/sh
CMD="sonar-scanner"

HOST="${SONAR_HOST:-https://sonarcloud.io}"
ORGANIZATION="${SONAR_ORGANIZATION:-$BITBUCKET_REPO_OWNER}"
PROJECT="${SONAR_PROJECT:-$BITBUCKET_REPO_SLUG}"

if [ ! -z "$SONAR_TOKEN" ]; then
	CMD="$CMD -Dsonar.login='$SONAR_TOKEN'"
else
	echo "SonarCloud token not set, please define \$SONAR_TOKEN variable." && exit 1
fi

if [ ! -z "$HOST" ]; then
	CMD="$CMD -Dsonar.host.url='$HOST'"
fi

if [ ! -z "$ORGANIZATION" ]; then
	CMD="$CMD -Dsonar.organization='$ORGANIZATION'"
fi

if [ ! -z "$PROJECT" ]; then
	CMD="$CMD -Dsonar.project='$PROJECT'"
fi

if [ ! -z "$BITBUCKET_BRANCH" ]; then
	CMD="$CMD -Dsonar.branch.name='$BITBUCKET_BRANCH'"
fi

eval $CMD
