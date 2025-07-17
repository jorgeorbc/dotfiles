#!/bin/bash

echo "Please enter the destination directory: "

read destination
rsync -a --exclude='__*' "$HOME/.config/qtile" "$destination/.config"
rsync -a --exclude='*.bak' "$HOME/.config/kitty" "$destination/.config"
rsync -a "$HOME/.config/neofetch" "$destination/.config"
rsync -a "$HOME/.config/nvim" "$destination/.config"
rsync -a "$HOME/.zshrc" "$destination/.config"
