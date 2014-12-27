#!/bin/sh

SCRIPT_DIR=$(dirname $0)

echo $SCRIPT_DIR

#pkill wine
export WINEPREFIX=$HOME/.wine_custom
export WINEVERPATH=$SCRIPT_DIR
export PATH=$SCRIPT_DIR/bin:$PATH
export WINESERVER=$SCRIPT_DIR/bin/wineserver
export WINELOADER=$SCRIPT_DIR/bin/wine
export WINEDLLPATH=$SCRIPT_DIR/lib/wine/fakedlls
export LD_LIBRARY_PATH="$SCRIPT_DIR/lib:$LD_LIBRARY_PATH"

$WINELOADER "$@"