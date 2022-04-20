# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/billym/.oh-my-zsh"

# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="dst"
#ZSH_THEME="pygmalion"
#ZSH_THEME="agnoster"
#ZSH_THEME="af-magic"
#ZSH_THEME="steeef"
#ZSH_THEME="gianu"
#ZSH_THEME="muse"
#ZSH_THEME="dieter"
ZSH_THEME="dracula"
#ZSH_THEME="dogenpunk"
#ZSH_THEME="TheOne"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Commands
# use exa for ls
# alias ls=exa

# Edit files
alias ,ev="vim ~/.vim/vimrc"
alias ,sv="source ~/.vim/vimrc"
alias ,ez="vim ~/.zshrc"
alias ,sz="source ~/.zshrc"
alias ,et="vim ~/.tmux.conf"
alias ,st="source ~/.tmux.conf && tmux source-file ~/.tmux.conf"

# Weather
alias weather="curl wttr.in"
alias weather.home="curl wttr.in/Murrieta"
alias weather.agoura="curl wttr.in/Agoura_Hills"
alias weather.florida="curl wttr.in/West_Palm_Beach"
alias weather.modesto="curl wttr.in/Modesto"
alias weather.chicago="curl wttr.in/Chicago"
alias moon="curl wttr.in/Moon"

# Projects
alias bazerh="cd ~/Projects/bazerh"
alias .vim="cd ~/.vim"
alias dot="cd ~/dot-files"
alias notes="cd ~/Projects/git/notes"
alias wnotes="cd ~/Projects/git/wnotes"
alias money="cd ~/Projects/bazerh/money"
alias commands="vim ~/Projects/git/wnotes/commands.md"
alias dlog="vim ~/Projects/git/wnotes/daily-log/README.md"

# AWS
alias awsb="aws --profile bazerh"

# GIT and development
alias ga="git add --all -p"
alias gc="git commit -m"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gp="git pull --rebase"
alias gs="git status"
alias refresh="rm -rf node_modules && npm install"
alias rein="rm -rf node_modules && npm install"

function note() {
  local notes_dir="~/Projects/git/notes"
  case "$1" in
    o)
      vim "$notes_dir"
      ;;
    l)
      l "$notes_dir"
      ;;
    s)
      pushd "$notes_dir"
      msg="Saved at $(date -u '+%Y-%m-%d %H:%M:%S') UTC"
      git add .
      git commit -m "$msg"
      git push origin master
      popd
      ;;
    *)
      vim "$notes_dir/$1"
  esac
}

function wnote() {
  local notes_dir="~/Projects/git/wnotes"
  case "$1" in
    o)
      vim "$notes_dir"
      ;;
    l)
      l "$notes_dir"
      ;;
    s)
      pushd "$notes_dir"
      msg="Saved at $(date -u '+%Y-%m-%d %H:%M:%S') UTC"
      git add .
      git commit -m "$msg"
      git push origin master
      popd
      ;;
    *)
      vim "$notes_dir/$1"
  esac
}

# search google
function google() {
  open /Applications/Google\ Chrome.app "https://google.com/search?q=$1"
}

# search nowait admin prod
function nw() {
  open /Applications/Google\ Chrome.app "https://nowaitapp.com/Admin_Site/selectAccount.php?biz_id=$1"
}

# search nowait admin stage
function nwstage() {
  open /Applications/Google\ Chrome.app "https://stretchwait.com/Admin_Site/selectAccount.php?biz_id=$1"
}

# search stackoverflow
function so() {
  open /Applications/Google\ Chrome.app "https://stackoverflow.com/search?q=$1"
}

# y search
function y() {
  open /Applications/Google\ Chrome.app "https://y/$1"
}

#alias tmux="TERM=xterm-256color-bce tmux"

# Vim ZSH Bindings
# bindkey -v
#
# # Use jk to exit insert mode
# #bindkey -e jk \\e
#
# bindkey '^P' up-history
# bindkey '^N' down-history
# bindkey '^?' backward-delete-char
# bindkey '^h' backward-delete-char
# bindkey '^w' backward-kill-word
# bindkey '^r' history-incremental-search-backward
bindkey \^U backward-kill-line

#
# function zle-line-init zle-keymap-select {
#   VIM_PROMPT="%{$fg_bold[cyan]%} [% normal]%  %{$reset_color%}"
#   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#   zle reset-prompt
# }
#
# zle -N zle-line-init
# zle -N zle-keymap-select
# export KEYTIMEOUT=1


# Vimstart - inspired by Calvin Cieslak
function vimstart() {
  PURPLE="\033[0;35m"
  ORANGE="\033[0;33m"

  echo $ORANGE
  TOTAL=0
  for i in {1..10}
  do
    vim -c\ q --startuptime /tmp/vim.log
    VAL=$(tail -n1 /tmp/vim.log | awk '{print $1}')
    echo $VAL
    TOTAL=$(echo $VAL | awk '{print $1+"'$TOTAL'"}')
  done

  echo $PURPLE
  echo $TOTAL | awk '{print $1/10 " Average \n"}'
}

# ripgrep search and replace all files in a directory - recursive
riplace() {
  if [ ${#1} -eq 0 ]; then
    read "a?Search: "
  else
    a=${#1}
  fi

  if [ ${#2} -eq 0 ]; then
    read "b?Replace:"
  else
    b=${#2}
  fi

  rg -l "$a" | xargs sed -i "" "s|$a|$b|g"
}


# FZF and RipGrep
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
#export FZF_DEFAULT_COMMAND='rg --files '
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Applications/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Applications/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Applications/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Applications/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
