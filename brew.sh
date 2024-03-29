#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

brew install git

brew install vim
brew install tmux

brew install tree

brew install ripgrep
brew install ack
brew install jq

# https://github.com/rakyll/hey
brew install hey

# Remove outdated versions from the cellar
brew cleanup
