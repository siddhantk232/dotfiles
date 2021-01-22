# clears fish welcome message
set fish_greeting

# environment variables 

set -x EDITOR nvim
set -x TERM alacritty
set -x LC_ALL en_US.UTF-8
set -x NVM_DIR ~/.nvm
set -x GOPATH ~/projects/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH ~/.config/scripts

# confif aliases (all lowercase and starts with c)

alias cfish "nvim ~/.config/fish/config.fish"
alias ci3 "nvim ~/.config/i3/config"
alias calacritty "nvim ~/.config/alacritty/alacritty.yml"
alias ci3status "nvim ~/.config/i3/status.toml"
alias cvim "nvim ~/.config/nvim/init.vim"
alias ctmux "nvim ~/.tmux.conf"
alias csessions "nvim ~/.config/scripts/sessions"

# aliases for commands

alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias todo "nvim ~/todo"
alias e "nvim"

# change caps lock key to escape 
# setxkbmap -option ctrl:nocaps

# set caps lock as ctrl when pressed with other keys
# xcape -e 'Control_L=Escape'

# enable vi
fish_vi_key_bindings

