#!/usr/bin/env bash
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Dotfiles
# [TODO]

# Homebrew
cd "$DOTFILES_DIR/homebrew"
. "./install.sh"
. "./brewing.sh"

# OS X
cd "$DOTFILES_DIR/osx"
. "./defaults.sh"
. "./dock.sh"
. "./safari.sh"
. "./terminal.sh"

# TextMate
# [TODO]

# Hyper (Kabariner + Seil)
# [TODO]

# ZSH
# [TODO]

# SSH
# [TODO]

# Dev
# [TODO]
