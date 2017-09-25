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
# bash
#----------------
ln -fs $PWD/.bashrc $HOME/.bashrc


#----------------
# git
#----------------
ln -fs $PWD/.gitconfig	$HOME/.gitconfig
