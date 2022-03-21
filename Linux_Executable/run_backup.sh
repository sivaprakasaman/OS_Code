#!/bin/bash
#Make sure that you've set up a proper connection and can directly SSH to backup NAS!
if ping -c 1 xxx.xxx.x.x; then
	if [[ "$(ping -c 1 xxx.xxx.x.x | grep '100% packet loss')" == "" ]]; then
		rsync -a -s ~/Docs/ andrew@xxx.xxx.x.x:Backup_Directory/Docs;
		fi;
	else 
		echo 0;
	fi;
	
	
