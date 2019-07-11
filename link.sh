#!/usr/bin/env bash -ex

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

(cd "${DIR}" && git submodule update --init --recursive)

ln -fnsv $DIR/home/.[^.]* $HOME/
