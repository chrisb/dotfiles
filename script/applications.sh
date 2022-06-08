#!/bin/bash

echo "[apps] Copying configs"
ln -sf applications/iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
ln -sf applications/zsh/.zshrc ~/.zshrc
ln -sf applications/spotify/com.spotify.client.plist ~/Library/Preferences/com.spotify.client.plist