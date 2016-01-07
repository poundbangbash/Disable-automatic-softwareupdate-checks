#!/bin/bash
# Script to turn off automatic software updates for 10.9+

/usr/sbin/softwareupdate --schedule off > /dev/null 2>&1

if /usr/sbin/softwareupdate --schedule | grep -wq off
then
	#grep exited 1 (finding "off") and thus succeeded
	exit 0
else
	#grep exited 0 (didn't find "off") and thus failed
	exit 1
fi