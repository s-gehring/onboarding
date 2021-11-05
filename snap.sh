#!/bin/bash

for f in ./snap-scripts/*; do
  filename=$(basename "$f")
  if [[ "$filename" == *".sh" ]]; then
    bash "$f" || break
  else
    sudo snap install "$filename" --classic
  fi
done

echo "Done installing snap stuff"
