#!/usr/local/bin/fish

## Set universal variables
set -U EDITOR 'nvim'

## Link files
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/.dotfiles/vim/nvim/init.vim ~/.config/nvim/init.vim

## Git
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig

