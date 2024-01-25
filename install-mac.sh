#!/usr/bin/env bash -ex

sudo -v

command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  coreutils \
  fish \
  fzf \
  git \
  gitui \
  lsd \
  logseq \
  mise \
  ripgrep \
  starship \
  wget \
  zoxide

sudo chsh -s $(which fish) $USER

brew install \
  brave-browser \
  eloston-chromium \
  firefox \
  iterm2 \
  orbstack \
  onlyoffice \
  raycast \
  visual-studio-code

brew install \
  homebrew/cask-fonts/font-fira-code-nerd-font \
  homebrew/cask-fonts/font-open-sans \
  homebrew/cask-fonts/font-source-code-pro \
  colindean/fonts-nonfree/font-microsoft-office
