set -g fish_greeting

if status is-interactive
    # Tool initializations
    starship init fish | source
    zoxide init fish | source

    # Environment settings
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    # set -x TERMINAL ghostty  # Uncomment whichever terminal you want
    # set -x TERMINAL kitty

    # Directory listing aliases
    alias l='eza -lh  --icons=auto'
    alias ls='eza -1   --icons=auto'
    alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
    alias ld='eza -lhD --icons=auto'
    alias lt='eza --icons=auto --tree'

    # Directory navigation
    abbr .. 'cd ..'
    abbr ... 'cd ../..'
    abbr .3 'cd ../../..'
    abbr .4 'cd ../../../..'
    abbr .5 'cd ../../../../..'

    # System commands
    abbr mkdir 'mkdir -p'
    alias install='sudo pacman -S'
    alias sysupdate='sudo pacman -Syu'
    alias search='sudo pacman -Ss'
    alias conf='cd .config'
    alias nvim='bash ~/.config/kitty/kitty.sh'
end
