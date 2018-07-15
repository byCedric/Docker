#!/bin/bash
branches=("develop" "master")
tags=("develop" "latest")

folders=(
	"ci-expo"
	"serve"
	"serve-webapp"
	"serve-laravel"
	"laravel-test"
)

for folder in "${folders[@]}"
do
	for i in "${!branches[@]}"
	do
		branch=${branches[$i]};
		tag=${tags[$i]};
		image="bycedric/${folder}:${tag}"

		echo "preparing ${image}";

		git checkout $branch;
		cd $folder;
		docker build . -t $image;
		docker push $image;
		cd ..;

		echo "done!";
	done
done
