eval "$(starship init zsh)"
EDITOR=nvim
alias v="nvim"
alias dot="cd ~/repos/dotfiles/"
alias ta="tmux a"

export XDG_CONFIG_HOME=$HOME/.config

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
