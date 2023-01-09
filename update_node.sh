#!/bin/sh
. ~/.nvm/nvm.sh
#Author: Rotari Corneliu

nvm 2> /dev/null 1> /dev/null
if [ $? -eq 0 ]; then 
	if [ "$#" -ne 1 ]; then
		echo ". ./update_node.sh <lts/node>"
	else
		echo "------------------------------[Updating the system]------------------------------"
		sudo apt-get update && sudo apt-get upgrade
		
		if [ $1 = "lts" ]
		then
			echo "\n---------------------[Installing the LTS verison of Node]---------------------"
			nvm install --lts
			nvm alias default lts/*
		else 
			echo "\n---------------------[Installing the last verison of Node]---------------------"
			nvm install node 
		fi
		echo
		echo "Do you want to reinstall old packeges? [Y/n]"
		read old_pack
		if [ $old_pack -z ] || [ $old_pack == "Y" ] || [ $old_pack == "y" ] || [ $old_pack == "y" ] ; then 
			echo "\n---------------------[Reinstalling packages]-------------------------"
			echo "Select a version from which to reinstall (e.g 18.13.0)"
			read vers
			nvm reinstall-packages $vers
		fi
	fi
else 
	echo "Please install nvm"
fi
