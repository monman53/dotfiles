#!/bin/bash

#================================
# dotfiles install script
#================================


#----------------
# nvim
#----------------
rm $HOME/.config/nvim
mkdir -p ~/.config
ln -s $PWD/nvim $HOME/.config/nvim


#----------------
# zsh
#----------------
ln -fs $PWD/.zshrc $HOME/.zshrc


#----------------
# tmux
#----------------
ln -fs $PWD/.tmux.conf $HOME/.tmux.conf


#----------------
# git
#----------------
ln -fs $PWD/.gitconfig	$HOME/.gitconfig
