#!/bin/sh
CMD="slack chat send"

CMD="$CMD --color good"
CMD="$CMD --fallback \"Deployed version *$CI_COMMIT_TAG* - $CI_PROJECT_NAME ($CI_ENVIRONMENT_NAME) - $CI_JOB_URL\""
CMD="$CMD --title \"$CI_PROJECT_NAME - $CI_ENVIRONMENT_NAME\""
CMD="$CMD --title-link \"$CI_JOB_URL\""
CMD="$CMD --text \"Deployed version *$CI_COMMIT_TAG*\","
CMD="$CMD --author \"GitLab #$CI_JOB_URL\""
CMD="$CMD --author_link \"$CI_JOB_URL\""

eval "$CMD $@"
