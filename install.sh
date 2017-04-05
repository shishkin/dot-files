#!/usr/bin/env bash -ex

sudo -v

command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  zsh \
  tmux \
  git \
  vim \
  coreutils \
  wget

sudo chsh -s $(which zsh) $USER

brew tap railwaycat/homebrew-emacsmacport
brew install emacs-mac --with-spacemacs-icon
brew linkapps

brew cask install \
  iterm2 \
  google-chrome \
  flux \
  quicksilver \
  spactacle \
  java

brew tap caskroom/fonts
brew tap colindean/fonts-nonfree

brew cask install \
  font-dejavu-sans-mono-for-powerline \
  font-source-code-pro \
  font-open-sans \
  font-microsoft-office

