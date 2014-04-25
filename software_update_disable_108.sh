#!/bin/bash
## Script to disable Software Update Checks on 10.8 systems.
## Even though we manage the MCX setting for SU it is still checking thru the App Store
## in the background.

## File location: /private/var/db/launchd.db/com.apple.launchd/overrides.plist
## Keys:
##      com.apple.softwareupdatecheck.initial
##          Disabled
##              true
##      com.apple.softwareupdatecheck.periodic
##          Disabled
##              true

sudo /usr/libexec/PlistBuddy -c 'Add :com.apple.softwareupdatecheck.initial:Disabled bool' /private/var/db/launchd.db/com.apple.launchd/overrides.plist
sudo /usr/libexec/PlistBuddy -c 'Add :com.apple.softwareupdatecheck.periodic:Disabled bool' /private/var/db/launchd.db/com.apple.launchd/overrides.plist

sudo /usr/libexec/PlistBuddy -c 'Set :com.apple.softwareupdatecheck.initial:Disabled true' /private/var/db/launchd.db/com.apple.launchd/overrides.plist
sudo /usr/libexec/PlistBuddy -c 'Set :com.apple.softwareupdatecheck.periodic:Disabled true' /private/var/db/launchd.db/com.apple.launchd/overrides.plist