#!/bin/bash

buildtarget()
{
	command="docker build -t polyverse/redhook-node-echo-server -t internal.hub.polyverse.io/redhook-node-echo-server ."
	echo $command
	$command
}

	buildtarget "$@"

if [ "$1" == "-p" ]; then
	docker push polyverse/redhook-node-echo-server
	docker push internal.hub.polyverse.io/redhook-node-echo-server
fi
