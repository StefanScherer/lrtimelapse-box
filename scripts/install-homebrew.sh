#!/bin/bash

# install homebrew
which brew >/dev/null
if [ $? -gt 0 ]; then
  ruby -e "$(curl -s -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew doctor
fi
