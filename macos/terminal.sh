#!/usr/bin/env bash
echo "› configuring OS X: Terminal"

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use "Xupar" theme
open ./Xupar.terminal # TODO: find a headless way to install the theme instead
defaults write com.apple.terminal "Default Window Settings" -string "Xupar"
defaults write com.apple.terminal "Startup Window Settings" -string "Xupar"
