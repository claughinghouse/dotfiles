#!/bin/bash


brew update && brew upgrade && brew upgrade --cask --greedy && brew cleanup && brew bundle dump --force && brew bundle cleanup --force && chezmoi re-add
