#!/bin/sh
# install.sh: Install scripts on system.

mkdir -p $HOME/bin > /dev/null 2>&1
for name in *; do
  target="$HOME/bin/$name"
  if [[ ! -e $target ]]; then
    if [[ $name != 'install.sh' ]] && [[ $name != 'README.md' ]]; then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done
