#!/bin/zsh
# FILE:		.zshrc
# AUTHOR:	nukosuke <nukosuke@shibuya.tech>
# DATE:		2018/02/15
# VERSION:	v0.0.0
# DESCRIPTION:	entrypoint

scripts=(general alias rbenv)

for script in $scripts; do
	source $HOME/.zsh/$script.zsh
done

