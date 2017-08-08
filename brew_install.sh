#!/usr/bin/env bash

WORK=~/work
EXTERNAL=$WORK/external
PROJECTS=$WORK/projects

if [ ! -e $WORK ]; then mkdir $WORK; fi


if [ "" == "`which brew`" ]
then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


function brew_install {
	local check=$1
	local args=$*
	if [ "" == "`which ${check}`" ]
	then
		brew install $args
	fi
}

#system
brew_install gist
brew_install zsh zsh-completions
chsh -s $(which zsh)

#dev
brew_install autoconf
brew_install automake
brew_install cmake
brew_install gcc

# arduino
brew_install avrdude

#utils
brew_install ansifilter
brew_install cloc
brew_install giflossy
brew_install ffmpeg --with-libvorbis
brew_install ios-deploy
brew_install lua
brew_install p7zip
brew_install ripgrep
brew_install tree
brew_install wget
brew_install gitx
