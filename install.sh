#!/bin/bash

repo="chrisb/dotfiles"
target="~/Projects/$repo"

git clone "git@github.com:$repo.git" "$target"

cd "$target"

./script/prompt_for_setup.sh
./script/brew.sh
./script/identity.sh
./script/git.sh
./script/fonts.sh
./script/ruby.rb
./script/applications.sh