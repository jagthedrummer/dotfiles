#!/bin/sh

echo "starting bash"

link_file () {
  FILE=~/.$1
  if [ -f "$FILE" ]; then
    echo "$FILE exists - skipping"
  else
    echo "$FILE does not exist - linking"
    set -x # print the following commands as they execute
    #ln -s ./$1 $FILE
    set +x # turn off command printing
  fi
}


link_file "bashrc"
link_file "bash_profile"


