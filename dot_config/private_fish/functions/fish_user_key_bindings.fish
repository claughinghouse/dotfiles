function __history_prefix_up --description 'Search history backward by command-line prefix, or move up in multiline/pager'
    if commandline --search-mode
        commandline -f history-prefix-search-backward
        return
    end

    if commandline --paging-mode
        commandline -f up-line
        return
    end

    if test (commandline -L) -eq 1
        commandline -f history-prefix-search-backward
    else
        commandline -f up-line
    end
end

function __history_prefix_down --description 'Search history forward by command-line prefix, or move down in multiline/pager'
    if commandline --search-mode
        commandline -f history-prefix-search-forward
        return
    end

    if commandline --paging-mode
        commandline -f down-line
        return
    end

    commandline -f down-line
end

function fish_user_key_bindings --description 'User key bindings'
    # Make Up/Down behave like oh-my-zsh history prefix search:
    # type a few characters, press Up to recall the most recent history entry
    # that starts with those characters, then Down to move forward through matches.
    bind up __history_prefix_up
    bind down __history_prefix_down

    # Bind the raw escape sequences too, for terminals/tmuxes that do not map
    # arrow keys to fish's named keys.
    bind \e\[A __history_prefix_up
    bind \e\[B __history_prefix_down
end
