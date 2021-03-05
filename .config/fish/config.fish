# clears fish welcome message
set fish_greeting

# environment variables 

set -x EDITOR nvim
set -x TERM st
set -x LC_ALL en_US.UTF-8
set -x NVM_DIR ~/.nvm
set -x GOPATH ~/projects/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH ~/.config/scripts
set -x BAT_THEME gruvbox

# config aliases (all lowercase and starts with c)

alias cfish        "nvim ~/.config/fish/config.fish"
alias ci3          "nvim ~/.config/i3/config"
alias ci3status    "nvim ~/.config/i3/status.toml"
alias ctmux        "nvim ~/.tmux.conf"
alias csessions    "nvim ~/.config/scripts/sessions"
alias cth          "wal -i ~/Pictures/Wallpapers"

# aliases for commands

alias config       "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias todo         "nvim ~/todo"
alias e            "nvim"
alias cwd          "cd ~/projects/work"

# enable vi
fish_vi_key_bindings

