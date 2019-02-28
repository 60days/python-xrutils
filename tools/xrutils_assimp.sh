#!/bin/sh

export LD_LIBRARY_PATH=/usr/src/app/xrutils/assimp/lib

fromFile="$1"
toFile="$2"

# current path of the current script
SCRIPT=$(dirname $(readlink -f "$0"))

# Use Assimp to convert from one file to another
$SCRIPT/../xrutils/assimp/bin/assimp export $fromFile $toFile