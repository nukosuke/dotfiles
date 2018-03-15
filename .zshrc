#!/bin/zsh
# FILE:		.zshrc
# AUTHOR:	nukosuke <nukosuke@shibuya.tech>
# DATE:		2018/02/15
# VERSION:	v0.0.0
# DESCRIPTION:	entrypoint

## install zplug if not exists
if [ ! -e $HOME/.zplug ]; then
  echo "zplus is not found"
  echo "=> starting installation..."
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
fi

### load zplug
source $HOME/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

### plugins
zplug "modules/utility", from:prezto
zplug "modules/prompt", from:prezto
zplug "modules/git", from:prezto
zstyle ':prezto:module:prompt' theme 'paradox'

zplug "zsh-users/zsh-syntax-highlighting", defer:2

### install & apply
if ! zplug check; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load


### lang envs
#TODO: move to .zsh/ as plugin

# ruby
if [ -e $HOME/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$PATH
  eval "$(rbenv init -)"
fi

# golang
if [ -e $HOME/.gvm ]; then
  source $HOME/.gvm/scripts/gvm
fi
