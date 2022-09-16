#!/bin/sh

echo "starting iterm2"

SRC_DIR=$(cd "$(dirname "$0")"; pwd) # The dir containing this script

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$SRC_DIR"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

