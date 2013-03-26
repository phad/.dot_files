#!/bin/bash

src="$HOME/.dot_files/bashrc.d"

for dir in `ls "$src"`
do
  if [ -d "$src/$dir" ]; then
    echo "* "$dir
    for file in `ls "$src/$dir"`
    do
      if [ -f "$src/$dir/$file" ]; then
        echo " + "$file
        . "$src/$dir/$file"
        echo "   "$file" (done)"
      fi
    done
  fi
done
