#!/bin/bash

echo "[apps] Copying configs"
ln -sf "$PWD/applications/iterm/com.googlecode.iterm2.plist" ~/Library/Preferences/com.googlecode.iterm2.plist
ln -sf "$PWD/applications/zsh/.zshrc" ~/.zshrc
ln -sf "$PWD/applications/spotify/com.spotify.client.plist" ~/Library/Preferences/com.spotify.client.plist