ZSH=$HOME/.oh-my-zsh
ZSH_THEME="arrow"

alias fuck='sudo $(history -p \!\!)'
alias server='ruby -run -e httpd . -p 5000'
alias go='tab "rc" && tab "bin/setup -rs" && clear'

# cf. http://robots.thoughtbot.com/how-to-use-arguments-in-a-rake-task
unsetopt nomatch

CASE_SENSITIVE="true"

plugins=(rails brew brew-cask git osx textmate)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh/site-functions/_aws

export BUNDLER_EDITOR="mate -w"
export EDITOR="mate -w"
if [ -d /usr/local/opt/qt@5.5/bin ]; then; export PATH="/usr/local/opt/qt@5.5/bin:$PATH"; fi
if [ -d /usr/local/opt/postgresql@9.6/bin ]; then; export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"; fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.zshrc-local ]; then; source ~/.zshrc-local; fi

ssh-add -K ~/.ssh/id_rsa > /dev/null
ssh-add -K ~/.ssh/github > /dev/null
