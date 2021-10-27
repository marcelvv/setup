#!/usr/bin/env zsh
echo "Configuring VS Code settings..."
rm ~/Library/Application\ Support/Code/User/settings.json
cp ~/.setup/dotfiles/.vscode.settings.json ~/Library/Application\ Support/Code/User/settings.json

echo "Configuring VS Code keybindings..."
rm ~/Library/Application\ Support/Code/User/keybindings.json
cp ~/.setup/dotfiles/.vscode.keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json