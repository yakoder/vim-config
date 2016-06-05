#!/usr/bin/bash

vimbaks=*.vim~
dotfiles=.${vimbaks}
args=""

if [ -z "$1" ]; then
  args="-i"
elif [ $(expr index "$1" "-") -eq 1 ]; then
  args=$1
else
  echo "Error: Unknown option: $1"
  exit
fi

if [ "$args" == "-rf" ] || [ "$args" == "-fr" ]; then
  find . -type f -name \*.vim~ -delete
  find . -type f -name .\*.vim~ -delete
elif [ "$args" == "-r" ]; then
  find . -type f -name \*.vim~ -exec rm -i {} \;
  find . -type f -name .\*.vim~ -exec rm -i {} \;
else
  for f in ${dotfiles}; do
    if [ "${args}" == "-l" ]; then
      [ -e "$f" ] && /usr/bin/ls ${dotfiles}
    else
      [ -e "$f" ] && /usr/bin/rm ${args} ${dotfiles}
    fi
    break
  done
  for f in ${vimbaks}; do
    if [ "${args}" == "-l" ]; then
      [ -e "$f" ] && /usr/bin/ls ${vimbaks}
    else
      [ -e "$f" ] && /usr/bin/rm ${args} ${vimbaks}
    fi
    break
  done
fi

# vim: filetype=sh
