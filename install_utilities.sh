#!/bin/bash
set -e

for util in ./utility/* ; do
	command="chmod +x $(readlink -f "$util")"
	echo $command
	eval $command
	command="ln -s -f $(readlink -f "$util") /usr/local/bin"
	echo $command
	sudo $command || doas $command
done
