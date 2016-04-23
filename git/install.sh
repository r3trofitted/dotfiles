#!/usr/bin/env bash
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "› setting up git"
ln -s ${BASEDIR}/.gitconfig $HOME/.gitconfig
ln -s ${BASEDIR}/.gitignore_global $HOME/.gitignore_global
if [ -f ${BASEDIR}/.gitconfig-local ]
then
  ln -s ${BASEDIR}/.gitconfig-local $HOME/.gitconfig-local
fi
