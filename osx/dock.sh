#!/usr/bin/env bash
echo "› configuring OS X: Dock"
if test ! $(which dockutil)
then
	echo "  Error: dockutil not found"
else
	dockutil --no-restart --remove all
	dockutil --no-restart --add "/Applications/Mail.app"
	dockutil --no-restart --add "/Applications/TextMate.app"
	dockutil --no-restart --add "/Applications/Safari.app"
	dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
	dockutil --no-restart --add "/Applications/iTunes.app"
	dockutil --no-restart --add "/Applications/Things.app"
	dockutil --no-restart --add "/Applications/Slack.app"
	dockutil --no-restart --add '~/Downloads' --display folder

	defaults write com.apple.dock orientation -string left
	defaults write com.apple.dock tilesize -int 36
	defaults write com.apple.dock magnification -boolean true
	defaults write com.apple.dock largesize -int 64
	
	killall Dock &> /dev/null
fi
