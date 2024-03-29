#!/bin/sh

echo "starting tmux"

SRC_DIR=$(cd "$(dirname "$0")"; pwd) # The dir containing this script

link_file () {
  FILE=~/.$1
  if [ -f "$FILE" ]; then
    echo "$FILE exists - skipping"
  else
    echo "$FILE does not exist - linking"
    set -x # print the following commands as they execute
    ln -s "$SRC_DIR/$1" $FILE
    set +x # turn off command printing
  fi
}


link_file "tmux.conf"

# Install the tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Now install the plugins that are specified in tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
