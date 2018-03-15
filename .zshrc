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
zplug "dracula/zsh", as:theme


### install & apply
if ! zplug check; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load
