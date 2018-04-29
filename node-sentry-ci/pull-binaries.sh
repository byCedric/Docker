#!/bin/bash
tags=`curl https://registry.hub.docker.com/v1/repositories/getsentry/sentry-cli/tags?page_size=1024 | sed -e 's/[][]//g' -e 's/"//g' -e 's/ //g' | tr '}' '\n'  | awk -F: '{print $3}'`
versions=(${tags//$'\n'/ })

echo "Pulled tags ${tags}"

# see https://github.com/getsentry/sentry-cli/issues/227#issuecomment-358573511
for tag in "${versions[@]}"
do
	docker pull getsentry/sentry-cli:$tag;
	container=$(docker create getsentry/sentry-cli:$tag);
	mkdir -p "./cdn/${tag}/sentry-cli";
	docker cp $container:/bin/sentry-cli cdn/$tag/sentry-cli/sentry-cli-Linux-x86_64;
	echo "${tag} done!";
done
