#!/bin/sh

echo "starting vim"

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

link_file "vimrc"

# Install vundle so that plugins can be installed
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Now install the plugins
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
