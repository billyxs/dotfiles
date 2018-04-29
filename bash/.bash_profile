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
