##
# DELUXE-HOME-BIN-INSERT
# (do not remove this comment)
##

# move /usr/local/bin to beginning of PATH
TEMP_PATH="/usr/local/bin"
WORK_PATH=":$PATH:"
WORK_PATH=${WORK_PATH/:$TEMP_PATH:/:}
WORK_PATH=${WORK_PATH%:}
WORK_PATH=${WORK_PATH#:}
export PATH="$TEMP_PATH:$WORK_PATH"
unset -v TEMP_PATH WORK_PATH


# BASH Completion
# brew install bash-completion
# https://github.com/Homebrew/homebrew-completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi


# Other
shopt -s checkwinsize
shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=100000
HISTCONTROL="ignoreboth"
HISTIGNORE="exit"

PROMPT_COMMAND="history -a"

PS1="> \w\n\u \$ "

#ytho
export PATH="/usr/local/opt/ruby/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

export PATH="$HOME/.cargo/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Applications/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

