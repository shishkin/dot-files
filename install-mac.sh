#!/usr/bin/env bash -ex

sudo -v

command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  python3 \
  zsh \
  tmux \
  git \
  neovim \
  lsd \
  coreutils \
  fzf \
  ripgrep \
  autojump \
  mise \
  wget

pip3 install neovim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo chsh -s $(which zsh) $USER

brew install \
  iterm2 \
  google-chrome \
  firefox \
  spectacle \
  java

brew install \
  font-hack-nerd-font \
  homebrew/cask-fonts/font-fira-code \
  homebrew/cask-fonts/font-source-code-pro \
  homebrew/cask-fonts/font-open-sans \
  colindean/fonts-nonfree/font-microsoft-office
