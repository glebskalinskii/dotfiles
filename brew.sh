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
brew install node # This installs `npm` too using the recommended installation method

# Remove outdated versions from the cellar
brew cleanup
