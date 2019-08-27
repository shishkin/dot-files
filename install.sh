#!/usr/bin/env bash -ex

sudo -v

command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  python3 \
  zsh \
  tmux \
  git \
  neovim \
  coreutils \
  fzf \
  ripgrep \
  autojump \
  wget

pip3 install neovim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo chsh -s $(which zsh) $USER

brew cask install \
  iterm2 \
  google-chrome \
  firefox \
  flux \
  quicksilver \
  spectacle \
  java

brew cask install \
  homebrew/cask-fonts/font-fira-code \
  homebrew/cask-fonts/font-source-code-pro \
  homebrew/cask-fonts/font-open-sans \
  colindean/fonts-nonfree/font-microsoft-office

