#!/usr/bin/env bash -ex

sudo -v

command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  zsh \
  tmux \
  git \
  neovim \
  coreutils \
  fzf \
  ripgrep \
  wget

pip3 install neovim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo chsh -s $(which zsh) $USER

brew linkapps

brew cask install \
  iterm2 \
  google-chrome \
  flux \
  quicksilver \
  spectacle \
  java

brew tap caskroom/fonts
brew tap colindean/fonts-nonfree

brew cask install \
  font-dejavu-sans-mono-for-powerline \
  font-fira-code \
  font-source-code-pro \
  font-open-sans \
  font-microsoft-office

