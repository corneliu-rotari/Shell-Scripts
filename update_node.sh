#!/bin/sh
. ~/.nvm/nvm.sh
#Author: Rotari Corneliu
if [ "$#" -ne 1 ]; then
    	echo ". ./update_node.sh <previous-version>"
else
	echo "------------------------------[Updating the system]------------------------------"
	sudo apt-get update && sudo apt-get upgrade

	echo "\n---------------------[Installing the LTS verison of Node]---------------------"
	nvm install node 
	nvm alias default node
	nvm use node
	nvm reinstall-packages $1
fi

