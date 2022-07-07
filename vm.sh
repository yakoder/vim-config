#!/usr/bin/env bash

# update if system is different
binpath=/usr/bin

vimbaks=*.vim~
dotfiles=.${vimbaks}
args=""

# default to interactive removal current-only
if [ -z "$1" ]; then
  args="-i"
else
  args="$1"
fi

# forced removal recursive 
if [ "$args" == "-rf" ] || [ "$args" == "-fr" ]; then
  find . -type f -name \*.vim~ -delete
  find . -type f -name .\*.vim~ -delete

# interactive removal recursive 
elif [ "$args" == "-r" ] || [ "$args" == "-ri" ] || [ "$args" == "-ir" ]; then
  find . -type f -name \*.vim~ -exec rm -i {} \;
  find . -type f -name .\*.vim~ -exec rm -i {} \;

# listing recursive 
elif [ "$args" == "-rl" ] || [ "$args" == "-lr" ]; then
  find . -type f -name \*.vim~ -print
  find . -type f -name .\*.vim~ -print

# listing current-only 
elif [ "$args" == "-l" ]; then
  for f in ${dotfiles}; do
    [ -e "$f" ] && ${binpath}/ls ${dotfiles}
    break
  done
  for f in ${vimbaks}; do
    [ -e "$f" ] && ${binpath}/ls ${vimbaks}
    break
  done

# interactive or forced removal current-only 
elif [ "$args" == "-i" ] || [ "$args" == "-f" ]; then
  for f in ${dotfiles}; do
    [ -e "$f" ] && ${binpath}/rm ${args} ${dotfiles}
    break
  done
  for f in ${vimbaks}; do
    [ -e "$f" ] && ${binpath}/rm ${args} ${vimbaks}
    break
  done

# help info
else
  echo "Error: Unknown option: $args"
  echo "Usage: $0 [-i]        # interactive removal in current directory"
  echo "       $0 -f          # forced removal in current directory"

  echo "       $0 -l          # list files in current directory"
  echo "       $0 -lf|-fl     # list files in current tree"

  echo "       $0 -r|-ri|-ir  # recursive interactive removal in current tree"
  echo "       $0 -rf|-fr     # forced removal in current tree"
  exit
fi

# vim: filetype=sh ts=2 sw=2
