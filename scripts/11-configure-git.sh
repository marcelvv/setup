#!/usr/bin/env zsh
if [[ ! -a ~/.gitconfig ]]; then
  echo "Linking .gitconfig"
  ln -s ~/.setup/dotfiles/.gitconfig ~/.gitconfig
  echo "Done."
fi