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
brew install fzf
brew install jq

# https://github.com/rakyll/hey
# HTTP load generator
brew install hey

# https://github.com/tw93/Mole
# Deep clean and optimize your Mac
brew install tw93/tap/mole

# Remove outdated versions from the cellar
brew cleanup
