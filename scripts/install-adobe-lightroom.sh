#!/bin/bash

# install latest Adobe Photoshop Lightroom 5
# brew cask install adobe-photoshop-lightroom

if [  -d "/Applications/Adobe Lightroom 4.app/" ]; then
  echo "You already have Adobe Lightroom 4 installed"
elif [ -d "/Applications/Adobe Lightroom 5.app/" ]; then
  echo "You already have Adobe Lightroom 5 installed"
elif [ ! -d "/Applications/Adobe Lightroom 3.app/" ]; then
  echo "Downloading Adobe Lightroom 3.6"
  curl -s -O -L http://download.adobe.com/pub/adobe/lightroom/mac/3.x/Lightroom_3_LS11_mac_3_6.dmg
  echo "Installing Adobe Lightroom 3.6"
  hdiutil attach "Lightroom_3_LS11_mac_3_6.dmg"
  pushd "/Volumes/Lightroom 3.6/"
  sudo installer -pkg "Adobe Lightroom 3.pkg" -target /
  popd
  sleep 5
  hdiutil detach /dev/disk1
  rm "Lightroom_3_LS11_mac_3_6.dmg"
fi
