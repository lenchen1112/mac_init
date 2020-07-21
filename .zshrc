git_branch () {
    ref=$(git symbolic-ref --short HEAD 2> /dev/null) || '';
    if [ -d .git ]; then
        echo '('$ref')'
    fi
}

export SSH_AUTH_SOCK=/Users/lenchen/.yubiagent/sock

# PS1="\n\e[0;34m\u[\A]\e[0m\e[0;36m@\h\e[m \e[0;33m[\w]\e[m \e[0;32m\$(git_branch)\e[0m\n\$ "
PROMPT='%{%F{blue}%}%n[%T]%{%f%}%{%F{cyan}%}@%m%{%f%} %{%F{yellow}%}[%d]%{%f%} %{%F{green}%}$(git_branch)%{%f%}'$'\n''\$ '

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias py=python3
alias ls='ls -G' 

export CLICOLORS=1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
