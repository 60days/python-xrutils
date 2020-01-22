#!/bin/sh

fromFile="$1"
toFile="$2"

# current path of the current script
SCRIPT=$(dirname $(readlink -f "$0"))

# This will enable a fix mode to ensure all special characters etc.. are
# cleaned from the .gltf file itself
python $SCRIPT/xrutils_fixgltf.py $fromFile

# Perform the conversion and save the output to the path that was
# provided
python $SCRIPT/../xrutils/gltf2usd/Source/gltf2usd.py -v -g $fromFile -o $toFile