set -g fish_greeting

if status is-interactive
    starship init fish | source

    # Set default terminal
    # set -x TERMINAL ghostty
    # set -x TERMINAL kitty

    set -gx EDITOR nvim
    set -gx VISUAL nvim
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

alias nvim='bash ~/.config/kitty/kitty.sh'

zoxide init fish | source

# QOL pacman scripts
alias install='sudo pacman -S'
alias sysupdate='sudo pacman -Syu'
alias search='sudo pacman -Ss'
alias conf='cd .config'
