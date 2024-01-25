#!/usr/bin/env bash

set -ex

if [ command -v apt-get ] &>/dev/null; then
  if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
    apt-get update -y
  fi
  apt-get install -y --no-install-recommends \
    fish \
    fzf \
    lsd \
    wget \
    zoxide
fi

chsh -s $(which fish) $USER

curl -sS https://starship.rs/install.sh | sh

curl https://mise.jdx.dev/install.sh | sh

./link.sh
