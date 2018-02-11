#!/usr/bin/env bash
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Dotfiles
# [TODO]

# Homebrew
cd "$DOTFILES_DIR/homebrew"
. "./install.sh"
. "./brewing.sh"

# MacOS
cd "$DOTFILES_DIR/macos"
. "./defaults.sh"
. "./dock.sh"
. "./safari.sh"
. "./terminal.sh"

# Git
cd "$DOTFILES_DIR/git"
. "./install.sh"

# TextMate
# [TODO]

# Hyper (Kabariner Elements)
# [TODO]

# ZSH
cd "$DOTFILES_DIR/zsh"
. "./install.sh"

# SSH
# [TODO]

# Dev
# [TODO]
