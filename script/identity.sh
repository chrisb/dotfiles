#!/bin/bash

echo "[identity] Setting up GPG"
item_name="Christopher Bielinski (Identity) - chrisgbielinski_pgp"
op document get "$item_name" > tmp/chrisgbielinski_pgp

echo "[identity] Complete pinentry with"
defaults write org.gpgtools.pinentry-mac DisableKeychain -bool no
op item get "$item_name" --fields Passphrase 
gpg --import tmp/chrisgbielinski_pgp

echo "[identity] Setting up SSH"
cp .ssh/config ~/.ssh/config

echo "[identity] Done"
