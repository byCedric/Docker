#!/bin/sh
CMD="sonar-scanner"
HOST="${SONAR_HOST:-https://sonarcloud.io}"

if [ ! -z "$SONAR_TOKEN" ]; then
	CMD="$CMD -Dsonar.login='$SONAR_TOKEN'"
else
	echo "SonarCloud token not set, please define \$SONAR_TOKEN variable." && exit 1
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

if [ ! -z "$BITBUCKET_BRANCH" ]; then
	if [ $BITBUCKET_BRANCH = *'/'* ]; then
		CMD="$CMD -Dsonar.pullrequest.branch='$BITBUCKET_BRANCH'"
		CMD="$CMD -Dsonar.pullrequest.key='$BITBUCKET_BRANCH'"
	else
		CMD="$CMD -Dsonar.branch.name='$BITBUCKET_BRANCH'"
	fi
fi

eval "$CMD $@"
