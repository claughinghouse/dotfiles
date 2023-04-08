#!/bin/bash


brew update && brew upgrade && brew cleanup && brew bundle && chezmoi re-add && gcloud components update -q
