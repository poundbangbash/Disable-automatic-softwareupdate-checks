#!/bin/bash

sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.softwareupdatecheck.periodic.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.softwareupdatecheck.initial.plist
sudo softwareupdate --schedule off