#!/usr/bin/env zsh

cd ~/.setup
echo "Restoring homebrew packages"
brew bundle install
echo "Restore complete"
cd -