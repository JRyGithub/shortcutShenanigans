SCRIPTS_PATH=/Users/josh/Documents/projects/shortcutShenanigans/scripts

alias '..'='cd ..'

# General
alias x=clear
alias c=clear
alias cc=clear
alias copy=pbcopy
alias ls='ls -1a'

# Scripts
alias mc=$SCRIPTS_PATH/mc.sh
alias pss=$SCRIPTS_PATH/paste-screenshot.sh

#GIT
alias gb='git --no-pager branch'
alias gbo=$SCRIPTS_PATH/git_branch_out.js
alias gc='git checkout'
alias gcap='$SCRIPTS_PATH/gcap.js'
alias gcb='git checkout -b'
alias gcm='git add --all && git commit -m'
alias gcmp='$SCRIPTS_PATH/gcmp.js'
alias gcmpw='$SCRIPTS_PATH/gcmpw.js'
alias gcp='git cherry-pick'
alias gd='git diff origin/master'
alias gdb='git checkout master && git branch -D'
alias gdh='git diff HEAD'
alias gdrb='git push --delete origin'
alias gfp=$SCRIPTS_PATH/git_fix_push.sh
alias git=hub
alias gl='git --no-pager log --oneline --decorate --graph -n 15'
alias gmp=$SCRIPTS_PATH/git_merge_pull_request.sh
alias gpr=$SCRIPTS_PATH/git_make_pull_request.js
alias grbi='git rebase -i'
alias grhom='git reset --hard origin/master'
alias grc='git add . && git rebase --continue'
alias gs='git status'
alias gsf='git show --pretty="" --name-only'
alias gu=$SCRIPTS_PATH/git_update.js