#!/bin/sh

echo "starting installation"

SRC_DIR=$(cd "$(dirname "$0")"; pwd) # The dir containing this script

"$SRC_DIR/../bash/install.sh"
