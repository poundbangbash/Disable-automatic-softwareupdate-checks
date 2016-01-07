#!/bin/bash
# Script to check to make sure automatic software updates are disabled even if they were enabled after distribution.

if /usr/sbin/softwareupdate --schedule | grep -wcq off
then
    exit 0
else
    echo `date` "Disabling automatic software update." >> /var/log/meredith/disableSoftwareUpdate.log
    /usr/sbin/softwareupdate --schedule off
fi

exit 0