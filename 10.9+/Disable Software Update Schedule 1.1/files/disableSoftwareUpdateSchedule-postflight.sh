#!/bin/bash

launchdJob=/Library/LaunchDaemons/com.meredith.disableSoftwareUpdateSchedule.plist

/bin/launchctl load "${launchdJob}"