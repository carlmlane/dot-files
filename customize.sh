#!/bin/bash
# This script will customize the tmux and vim environents to my liking!

# copy and install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# make vim colors directory
mkdir ~/.vim/colors
# copy colors to color directory
cp colors/* ~/.vim/colors
# copy vimrc file to home directory
cp .vimrc ~/

# install tmux 2
sudo apt-get update
sudo apt-get install -y python-software-properties software-properties-common
cd ~
wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
tar -zxf tmux-2.2.tar.gz
cd tmux-2.2
./configure && make
sudo ln -s /home/$(whoami)tmux-2.2/tmux /usr/local/bin/tmux

# install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install tmux.conf to home directory
cd ..
cp .tmux.conf ~/
# source tmux.conf
# tmux source ~/.tmux.conf

