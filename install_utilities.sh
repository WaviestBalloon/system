#!/bin/bash
set -e

for util in ./utility/* ; do
	command="ln -s $(readlink -f "$util") /usr/local/bin"
	echo $command
	sudo $command || doas $command
done
