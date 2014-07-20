#!/bin/bash

# install Xcode Command Line Tools
git --help >/dev/null 2>&1
if [ $? -gt 0 ]; then
  if [ -f /vagrant/resources/command_line_tools_for_osx_mavericks_april_2014.dmg ]; then
    hdiutil attach "/vagrant/resources/command_line_tools_for_osx_mavericks_april_2014.dmg"
    pushd "/Volumes/Command Line Developer Tools/"
    sudo installer -pkg "Command Line Tools (OS X 10.9).pkg" -target /
    popd
    sleep 5
    hdiutil detach /dev/disk1s2
  else
    echo "Downloading command_line_tools_for_osx_mavericks_april_2014"
    curl -s -O -L http://swcdn.apple.com/content/downloads/42/47/031-00536/0e3xru4xatuj4v9wb0y113nirfvnz34v8d/CLTools_Executables.pkg
    curl -s -O -L http://swcdn.apple.com/content/downloads/42/47/031-00536/0e3xru4xatuj4v9wb0y113nirfvnz34v8d/MacOSX10_9_SDK.pkg
    echo "Installing command_line_tools_for_osx_mavericks_april_2014"
    sudo installer -pkg "CLTools_Executables.pkg" -target /
    sudo installer -pkg "MacOSX10_9_SDK.pkg" -target /
    rm CLTools_Executables.pkg
    rm MacOSX10_9_SDK.pkg
  fi
fi
