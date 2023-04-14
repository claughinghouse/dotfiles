#!/bin/bash


brew update && brew upgrade && brew cleanup && brew bundle --force && chezmoi re-add && gcloud components update -q
