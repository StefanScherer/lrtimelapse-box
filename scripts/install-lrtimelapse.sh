#!/bin/bash

# install LRTimelapse 3.4
if [ ! -d "/Applications/LRTimelapse 3.app/" ]; then
  echo "Downloading LRTimelapse 3.4"
  curl -s -O -L http://lrtimelapse.com/files/LRTimelapse3.4_mac.dmg
  hdiutil attach "LRTimelapse3.4_mac.dmg"
  pushd "/Volumes/LRTimelapse 3 - Installer/"
  mkdir -p "/Applications/LRTimelapse 3.app/"
  sudo cp -r "LRTimelapse 3.app" "/Applications/"
  if [ ! -d "/Users/$USER/Library/Application Support/Adobe/Lightroom" ]; then
    mkdir -p "/Users/$USER/Library/Application Support/Adobe/Lightroom"
  fi
  sudo installer -pkg "LRTimelapse 3.4 Addons.mpkg" -target /
  # run postflight for current user
  "LRTimelapse 3.4 Addons.mpkg/Contents/Packages/lightroom.pkg/Contents/Resources/postflight"
  # written as root, so we have to sudo to cleanup
  sudo rm -rf /temp/LRTExport
  popd
  sleep 5
  hdiutil detach /dev/disk1
  rm "LRTimelapse3.4_mac.dmg"
fi
