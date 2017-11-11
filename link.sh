#!/usr/bin/env bash -ex

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

git submodule update --init --recursive --remote $DIR

ln -fnsv $DIR/home/.[^.]* $HOME/
