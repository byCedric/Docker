#!/bin/sh
CMD="slack chat send"

CMD="$CMD --color bad"
CMD="$CMD --fallback \"Failed to deploy version *$CI_COMMIT_TAG* - $CI_PROJECT_NAME ($CI_ENVIRONMENT_NAME) - $CI_JOB_URL\""
CMD="$CMD --title \"$CI_PROJECT_NAME - $CI_ENVIRONMENT_NAME\""
CMD="$CMD --title-link \"$CI_JOB_URL\""
CMD="$CMD --text \"Failed to deploy version *$CI_COMMIT_TAG*\""
CMD="$CMD --author \"GitLab #$CI_JOB_ID\""
CMD="$CMD --author-link \"$CI_JOB_URL\""

eval "$CMD $@"
