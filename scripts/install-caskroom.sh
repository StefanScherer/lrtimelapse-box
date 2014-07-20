#!/bin/bash

# install caskroom.io
if [ ! -d /usr/local/Library/Taps/caskroom/homebrew-cask ]; then
  brew tap caskroom/cask
  brew install brew-cask
fi
