#!/bin/bash
set -euo pipefail

# Install packages
brew install \
    gh \
    iterm2 \
    python@3.12 \
    poetry \
    pyenv \
    openssh \
    rustup-init \
    just \
    node \
    starship

# Install casks
brew install --cask firefox \ 
    visual-studio-code \
    docker

# Clean up
brew cleanup