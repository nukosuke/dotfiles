#!/bin/zsh
# FILE:		rbenv.zsh
# AUTHOR:	nukosuke <nukosuke@shibuya.tech>
# DATE:		2018/02/15
# VERSION:	v0.0.0
# DESCRIPTION:	initialize language runtime by rbenv

command=rbenv

if (( ${+commands[$command]} )); then
	export PATH=$PATH:$HOME/.$command/bin
	eval "$($command init -)"
fi

