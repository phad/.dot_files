#!/bin/bash

src="$HOME/.dot_files/bashprofile.d"

for dir in `ls "$src"`
do
  if [ -d "$src/$dir" ]; then
    for file in `ls "$src/$dir"`
    do
      if [ -f "$src/$dir/$file" ]; then
        . "$src/$dir/$file"
      fi
    done
  fi
done
