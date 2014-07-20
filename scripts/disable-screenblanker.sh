#!/bin/bash

# turn off screen blanker and power down in VM
sudo systemsetup -setsleep Never

# disable screensaver
defaults -currentHost write com.apple.screensaver idleTime 0

# enable debug menu in Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true
