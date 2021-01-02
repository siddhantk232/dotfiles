set fish_greeting

set EDITOR nvim
set NVM_DIR ~/.nvm
set -x GOPATH ~/projects/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH ~/.config/scripts
set -x PATH $PATH ~/.config/scripts


alias cfish "nvim ~/.config/fish/config.fish"
alias ci3 "nvim ~/.config/i3/config"
alias ci3status "nvim ~/.config/i3/status.toml"
alias cvim "nvim ~/.config/nvim/init.vim"
alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias todo "nvim ~/todo"

fish_vi_key_bindings
