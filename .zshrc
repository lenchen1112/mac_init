setopt PROMPT_SUBST

git_branch () {
    ref=$(git symbolic-ref --short HEAD 2> /dev/null) || return;
    echo '('$ref')'
}

fpath=(~/.zsh $fpath)
export SSH_AUTH_SOCK=/Users/lenchen/.yubiagent/sock

PROMPT='%{%F{blue}%}%n[%T]%{%f%}%{%F{cyan}%}@%m%{%f%} %{%F{yellow}%}[%~]%{%f%} %{%F{green}%}$(git_branch)%{%f%}'$'\n''\$ '

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias py=python3
alias ls='ls -G' 

export CLICOLORS=1
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
