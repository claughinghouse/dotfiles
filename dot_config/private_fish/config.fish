# Disable greeting
set fish_greeting

# Set Editor to neovim
set -gx EDITOR nvim

# Set neovim as the program to open manpages
set -gx MANPAGER 'nvim +Man!'

# Configure Plannotator when connected to the dev server over SSH
if set -q SSH_CONNECTION; and test (hostname -s) = dev
    set -gx PLANNOTATOR_REMOTE 1
    set -gx PLANNOTATOR_PORT 9999
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
