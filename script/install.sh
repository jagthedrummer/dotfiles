#!/bin/sh

echo "starting installation"

SRC_DIR=$(cd "$(dirname "$0")"; pwd) # The dir containing this script

# We do brew first so that it can install some stuff that the others need
cd "$SRC_DIR/../brew"
brew bundle install
cd "$SRC_DIR"

"$SRC_DIR/../bash/install.sh"
"$SRC_DIR/../tmux/install.sh"
"$SRC_DIR/../git/install.sh"
"$SRC_DIR/../vim/install.sh"
"$SRC_DIR/../asdf/install.sh"
"$SRC_DIR/../iterm2/install.sh"

# Now we add a couple of asdf plugins

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

