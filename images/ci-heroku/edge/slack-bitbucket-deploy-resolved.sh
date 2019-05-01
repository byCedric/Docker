#!/bin/sh
COMMIT_HASH="${BITBUCKET_COMMIT:0:7}"
VERSION="${BITBUCKET_TAG:=$COMMIT_HASH}"
IDENTIFIER="${BITBUCKET_BRANCH:=$VERSION}"
URL="https://bitbucket.org/${BITBUCKET_WORKSPACE}/${BITBUCKET_REPO_SLUG}/addon/pipelines/home#!/results/${BITBUCKET_BUILD_NUMBER}"

CMD="slack chat send"
CMD="$CMD --color good"
CMD="$CMD --fallback \"Deployed version *$VERSION* - $BITBUCKET_REPO_SLUG - $URL\""
CMD="$CMD --title \"$BITBUCKET_REPO_SLUG - $IDENTIFIER\""
CMD="$CMD --title-link \"$URL\""
CMD="$CMD --text \"Deployed version *$VERSION*\""
CMD="$CMD --author \"Bitbucket Pipelines #$BITBUCKET_BUILD_NUMBER\""
CMD="$CMD --author-link \"$URL\""

eval "$CMD $@"
