#!/usr/bin/env bash
set -euo pipefail

# Check if zsh is currently being used
if [ $SHELL == *zsh* ]
then
  echo "Currently using zsh (default macOS shell). Will set bash as the default shell."
  echo $(brew --prefix)/bin/bash | sudo tee -a /private/etc/shells
  chsh -s $(brew --prefix)/bin/bash
else
  echo "Now using bash"
fi
