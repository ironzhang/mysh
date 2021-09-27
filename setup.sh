#!/bin/sh

function setup_git() {
	ln -s ~/mysh/git/gitconfig .gitconfig
}

function setup_tmux() {
	ln -s ~/mysh/tmux/tmux.conf .tmux.conf
}

function setup_ohmyzsh() {
	echo "source ~/mysh/zsh/zsh.rc" >> .zshrc
}

function setup_neovim() {
	mkdir -p ~/.config/nvim
	ln -s ~/mysh/nvim/init.vim ~/.config/nvim/init.vim
	ln -s ~/mysh/nvim/autoload ~/.config/nvim/autoload
}

function setup() {
	cd ~
	setup_git
	setup_tmux
	setup_ohmyzsh
	setup_neovim
}

setup
