#!/usr/bin/env bash -ex

command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
command -v sdk >/dev/null 2>&1 || curl -s http://get.sdkman.io | bash

brew install \
  zsh \
  tmux \
  git \
  vim \
  coreutils \
  wget

chsh -s $(which zsh)

brew tap railwaycat/homebrew-emacsmacport
brew install emacs-mac --with-spacemacs-icon
brew linkapps

brew cask install \
  iterm2 \
  flux \
  java

brew tap caskroom/fonts
brew tap colindean/fonts-nonfree

brew cask install \
  font-dejavu-sans-mono-for-powerline \
  font-open-sans \
  font-microsoft-office

