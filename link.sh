#!/usr/bin/env bash

set -ex

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# This only links files, but creates non-link directories
# TODO: replace with recursive ln
cp -frs $DIR/home/.[^.]* $HOME/
