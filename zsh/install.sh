#!/usr/bin/env bash
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "› setting up zsh"
ln -s ${BASEDIR}/.zshrc $HOME/.zshrc
if [ -f ${BASEDIR}/.zshrc-local ]
then
  ln -s ${BASEDIR}/.zshrc-local $HOME/.zshrc-local
fi

echo "› setting up oh-my-zsh"
if [ ! -f $HOME/.oh-my-zsh/custom/themes/arrow.zsh-theme ]
then
  mkdir -p "$HOME/.oh-my-zsh/custom/themes"
  ln -s ${BASEDIR}/arrow.zsh-theme $HOME/.oh-my-zsh/custom/themes/arrow.zsh-theme
else
  echo "  (nothing to do)"
fi
