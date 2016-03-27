#!/usr/bin/env bash -ex

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s $DIR/home/.* $HOME/
