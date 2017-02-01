#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install vim --override-system-vi
brew install tmux

brew install tree

brew install git

# Node Version Manager - https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# Remove outdated versions from the cellar
brew cleanup
