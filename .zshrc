# Created by newuser for 5.8
# # ~.zshrc
export ZSH=~/.oh-my-zsh
# disable oh-my-zsh themes for pure prompt
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh
export ZPLUG_HOME=/home/josh/.zplug
source $ZPLUG_HOME/init.zsh
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zdharma/fast-syntax-highlighting", as:plugin, defer:2
zplug "zsh-users/zsh-autosuggestions", as:plugin, defer:2
zplug load
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# SSH for Github
# Reuse existing ssh agent if we find one or create a new one
SSH_ENV=$HOME/.ssh/environment

# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
    echo succeeded
    chmod 600 ${SSH_ENV}
        . ${SSH_ENV} > /dev/null
    /usr/bin/ssh-add ~/.ssh/id_ed25519
}

if [ -f "${SSH_ENV}" ]; then
     . ${SSH_ENV} > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
# Aliases
# Github
alias gcmsg="git commit -m"
alias gac="git add --all && git commit -m"
alias gu="git fetch && git pull"
alias gup="git fetch --prune --all && git pull"
alias ga="git add --all"
alias gs="git status"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gp="git push"
alias gdiff="git diff origin/master"
alias gl="git --no-pager log --oneline --decorate --graph -n 15"
# Misch
alias c="clear"
alias x="clear"
alias ls="ls -a"
alias reload="source ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias zshrc="vi ~/.zshrc"
alias ".."="cd .."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
                             
