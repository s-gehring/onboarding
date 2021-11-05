#!/bin/bash

for f in ./apt-scripts/*; do
  filename=$(basename "$f")
  if [[ "$filename" == *".sh" ]]; then
    bash "$f" || break
  else
    sudo apt-get install "$filename" -y
  fi
done

echo "Done installing apt-stuff"
