#!/bin/sh
COMMIT_HASH="${BITBUCKET_COMMIT:0:7}"
VERSION="${BITBUCKET_TAG:=$COMMIT_HASH}"
URL="https://bitbucket.org/${BITBUCKET_REPO_SLUG}/addon/pipelines/home#!/results/${BITBUCKET_BUILD_NUMBER}"

CMD="slack chat send"
CMD="$CMD --color bad"
CMD="$CMD --fallback \"Failed to deploy version *$VERSION* - $BITBUCKET_REPO_SLUG - $URL\""
CMD="$CMD --title \"$BITBUCKET_REPO_SLUG\""
CMD="$CMD --title-link \"$URL\""
CMD="$CMD --text \"Failed to deploy version *$VERSION*\""
CMD="$CMD --author \"Bitbucket Pipelines #$BITBUCKET_BUILD_NUMBER\""
CMD="$CMD --author-link \"$URL\""

eval "$CMD $@"
