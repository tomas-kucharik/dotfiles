#!/bin/bash

# Go to root dir, save current directory in stack
pushd $PWD
# For each folder in current working directory
for folder in */
do
    echo "Removing $folder"
    stow -D $folder
done
# Go back to directory saved in stack
popd
