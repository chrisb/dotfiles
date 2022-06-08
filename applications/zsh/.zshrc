export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl)"

eval "$(rbenv init - zsh)"

source "$(brew --prefix)/share/antigen/antigen.zsh"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein

antigen bundle ruby 
antigen bundle git 
antigen bundle bundler 
antigen bundle rake
antigen bundle command-not-found
antigen bundle macos

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell

SPACESHIP_PROMPT_SEPARATE_LINE=false
antigen theme spaceship-prompt/spaceship-prompt

# Tell Antigen that you're done.
antigen apply

alias ls="ls -alGh" 
alias gst="git status"



# antigen use oh-my-zsh

# # antigen theme spaceship-prompt/spaceship-prompt
# antigen bundle ruby git bundler rake
# # antigen list
# # THEME=denysdovhan/spaceship-prompt 
# # antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

# antigen apply