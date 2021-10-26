#!/usr/bin/env zsh
echo "Configuring VS Code..."
rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.setup/dotfiles/vscode.settings.json ~/Library/Application\ Support/Code/User/settings.json