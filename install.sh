#!/usr/bin/env bash

set -ex

if [ -x "$(command -v apt-get)" ]; then
  if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
    apt-get update -y
  fi
  sudo apt-get install -y --no-install-recommends \
    fish \
    fzf \
    wget \
    zoxide

  # TODO: Install lsd from another repo
  # lsd \
fi

sudo chsh -s $(which fish) $USER

curl -fsSL https://starship.rs/install.sh | sh -s -- --yes

curl -fsSL https://mise.jdx.dev/install.sh | sh

./link.sh
