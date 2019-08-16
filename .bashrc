function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}") ";
}

source ~/.git-completion.bash

PS1="\n\e[0;34m\u[\A]\e[0m\e[0;36m@\h\e[m \e[0;33m[\w]\e[m \e[0;32m\$(git_branch)\e[0m\n\$ "

alias py=python3
alias ls='ls -G'

export CLICOLORS=1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
