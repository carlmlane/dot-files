#!/bin/bash
# This script will customize the tmux and vim environents to my liking!

# copy and install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# copy vimrc file to home directory
cp .vimrc ~/

# install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# install tmux.conf to home directory
cp .tmux.conf ~/
# source tmux.conf
tmux source ~/.tmux.conf

