#!/bin/bash

echo "[git] Configuring"

git config --global user.email 'chrisb@users.noreply.github.com'
git config --global user.name 'Chris Bielinski'
git config --global core.editor 'code --wait'
git config --global commit.gpgsign true
git config --global user.signingkey 45539E1D0551C0EE

echo "[git] Done"