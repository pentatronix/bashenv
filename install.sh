#! /bin/bash
echo This script installs all the necessary files for Ubuntu.
echo It will overwrite the following files:
echo   .bashrc
echo   .tmux
echo   .vimrc
read -n1 -r -p "Press any key to continue or ^C to cancel...." key
sudo apt-get -y update && sudo apt-get upgrade
sudo apt-get -y install cmus tmux powerline vim git elinks 
mkdir ~/bin
mkdir ~/.tmux
mkdir ~/.vim
git clone https://github.com/nhdaly/tmux-better-mouse-mode ~/.tmux/
cat bashrc >> ~/.bashrc
cat tmux >> ~/.tmux.conf
cat vimrc >> ~/.vimrc

