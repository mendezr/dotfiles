eval "$(starship init zsh)"
EDITOR=nvim
alias v="nvim"
alias dot="cd ~/repos/dotfiles/"
alias ta="tmux a"
alias c="clear"

export XDG_CONFIG_HOME=$HOME/.config

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. "$HOME/.local/bin/env"
