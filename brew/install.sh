#!/bin/sh

echo "starting tmux"

SRC_DIR=$(cd "$(dirname "$0")"; pwd) # The dir containing this script

link_file () {
  FILE=~/$1
  if [ -f "$FILE" ]; then
    echo "$FILE exists - skipping"
  else
    echo "$FILE does not exist - linking"
    set -x # print the following commands as they execute
    ln -s "$SRC_DIR/$1" $FILE
    set +x # turn off command printing
  fi
}


link_file "Brewfile"


