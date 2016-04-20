#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Mail.app"
dockutil --no-restart --add "$HOME/Applications/TextMate.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/Utilities/Terminal.app"
dockutil --no-restart --add "/Applications/iTunes.app"
dockutil --no-restart --add "$HOME/Applications/Things.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add '~/Downloads' --display folder

killall Dock

