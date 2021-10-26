#!/usr/bin/env zsh
if [[ ! $(brew bundle check) ]]; then
  cd ~/.setup
  echo "Restoring homebrew packages from backup"
  brew bundle install

  cd -
fi