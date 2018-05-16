export ZSH=/Users/Matas/.oh-my-zsh
export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

ZSH_THEME="smyck"

autoload -U zmv

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

alias co="git checkout"
alias cob="git checkout -b"
alias psh="git push origin HEAD"
alias pshf="git push --force-with-lease"
alias gpo="git pull origin"
alias gpom="git pull origin master"
alias rb="git rebase -i"
alias st="git st"
alias grh1="git reset head~1"
alias grh2="git reset head~2"
alias grh3="git reset head~3"
alias grh4="git reset head~4"
alias grh5="git reset head~5"
alias gitlog="git log master --since='2018-03-05:2018-03-13' --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias stop='docker stop $(docker ps -aq)'
alias rt="bundle exec rake routes | grep"
alias services="(cd /Users/Matas/www/ksd-docker; make common services='memcached mysql57 mysql56 redis' up_options='-d';)"
alias es="(cd /Users/Matas/www/ksd-docker; make elasticsearch services='elasticsearch17' up_options='-d';)"
alias vimrc="mvim ~/.vimrc"
alias zshrc="mvim ~/.zshrc"
alias sv="source ~/.vimrc"
alias sz="source ~/.zshrc"
alias mvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"
alias mg="bin/rails generate migration"

function gitvim {
  mvim -n -p $(git status --short | awk ' { print $2 } ')
}

export NVM_DIR="/Users/Matas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
