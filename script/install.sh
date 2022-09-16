#!/bin/sh

echo "starting installation"

SRC_DIR=$(cd "$(dirname "$0")"; pwd) # The dir containing this script

"$SRC_DIR/../bash/install.sh"
"$SRC_DIR/../tmux/install.sh"
"$SRC_DIR/../git/install.sh"
"$SRC_DIR/../vim/install.sh"
"$SRC_DIR/../asdf/install.sh"

cd "$SRC_DIR/../brew"
brew bundle install
cd "$SRC_DIR"

