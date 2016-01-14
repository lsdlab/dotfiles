#!/bin/zsh

# Homebrew update and cleanup
brew update && brew upgrade && brew cleanup && brew prune && brew doctor
