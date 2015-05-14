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


# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
# add Java bin directory to beginning of path so it is picked up before /usr/bin/java entry
export PATH=$JAVA_HOME/bin:$PATH

# maven env variables
export M2_HOME=/usr/local/apache-maven-3.2.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

shopt -s checkwinsize
shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=100000
HISTCONTROL="ignoreboth"
HISTIGNORE="exit"

PROMPT_COMMAND="history -a"

PS1="> \w\n\u \$ "
