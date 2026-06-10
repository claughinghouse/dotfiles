# User paths (use $HOME for portability across machines)
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.local/bin"

set -gx GOPATH "$HOME/go"
fish_add_path "$GOPATH/bin"
