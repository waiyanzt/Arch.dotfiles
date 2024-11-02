if status is-interactive
    # Commands to run in interactive sessions can go here
    # Initialize starship prompt
    starship init fish | source

    # Set default editor
    set -gx EDITOR nvim
    set -gx VISUAL nvim

    # System aliases
    alias sysupdate='sudo pacman -Syu' # Update System
    alias conf='cd ~/.config'

    # Remove greeting message
    set -g fish_greeting

    # Useful functions
    # Create directory and cd into it
    function mkcd
        mkdir -p $argv[1] && cd $argv[1]
    end

    # Git clone and cd into directory
    function gclone
        git clone $argv[1] && cd (basename $argv[1] .git)
    end

    # Quick cd up directories
    alias ..='cd ..'
    alias ...='cd ../..'
end
