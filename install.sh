#!/usr/bin/env bash -ex

command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
command -v sdk >/dev/null 2>&1 || curl -s http://get.sdkman.io | bash

brew install \
  zsh \
  tmux \
  git \
  coreutils \
  wget

brew cask install \
  iterm2 \
  firefox \
  dropbox \
  java