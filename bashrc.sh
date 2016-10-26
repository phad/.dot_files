#!/bin/bash

src="$HOME/.dot_files/bashrc.d"

for dir in `ls "$src"`
do
  if [ -d "$src/$dir" ]; then
    for file in `ls "$src/$dir" | grep .sh`
    do
      if [ -f "$src/$dir/$file" ]; then
        . "$src/$dir/$file"
      fi
    done
  fi
done
