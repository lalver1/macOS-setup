#!/bin/bash
set -euo pipefail

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Bash
brew update && brew install bash

# Install Git
brew update && brew install git