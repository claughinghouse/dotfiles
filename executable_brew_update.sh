#!/bin/bash


brew update && brew upgrade && brew cleanup && brew bundle dump --force && brew bundle cleanup --force && chezmoi re-add
