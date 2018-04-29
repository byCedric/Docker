#!/bin/bash
branches=("develop" "master")
tags=("develop" "latest")

images=(
	"node-ci"
	"node-sentry-ci"
	"serve"
	"serve-webapp"
	"serve-laravel"
	"laravel-test"
)

for image in "${images[@]}"
do
	for i in "${!branches[@]}"
	do
		branch=${branches[$i]};
		tag=${tags[$i]};

		echo "preparing ${image}:${tag}";

		git checkout $branch;
		cd $image;
		docker build . -t $image:$tag;
		docker push $image:$tag;
		cd ..;

		echo "done!";
	done
done
