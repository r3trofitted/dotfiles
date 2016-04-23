#!/usr/bin/env bash
echo "› installing homebrew"
if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "  (nothing to do)"
fi
