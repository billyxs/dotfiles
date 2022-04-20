if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
tmux set prefix C-b
tmux source-file ~/.tmux.conf
alias tmux="TERM=screen-256color-bce tmux"
