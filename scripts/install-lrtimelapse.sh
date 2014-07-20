#!/bin/bash

# install LRTimelapse 3.4
if [ ! -d "/Applications/LRTimelapse 3.app/" ]; then
  echo "Downloading LRTimelapse 3.4"
  curl -s -O -L http://lrtimelapse.com/files/LRTimelapse3.4_mac.dmg
  hdiutil attach "LRTimelapse3.4_mac.dmg"
  pushd "/Volumes/LRTimelapse 3 - Installer/"
  mkdir -p "/Applications/LRTimelapse 3.app/"
  sudo cp -r "LRTimelapse 3.app" "/Applications/"
  sudo installer -pkg "LRTimelapse 3.4 Addons.mpkg" -target /
  popd
  sleep 5
  hdiutil detach /dev/disk1
  rm "LRTimelapse3.4_mac.dmg"
fi
