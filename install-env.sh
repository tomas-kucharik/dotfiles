#!/bin/bash

# Go to root dir, save current directory in stack
pushd $PWD
# For each folder in current working directory
for folder in */
do
    echo "Removing old $folder"
    stow -D $folder
    echo "Stowing new $folder"
    stow $folder
done
# Go back to directory saved in stack
popd
