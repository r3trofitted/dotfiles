ZSH=$HOME/.oh-my-zsh
ZSH_THEME="arrow"

alias fuck='sudo $(history -p \!\!)'

# cf. http://robots.thoughtbot.com/how-to-use-arguments-in-a-rake-task
unsetopt nomatch

CASE_SENSITIVE="true"

plugins=(rails brew brew-cask git osx textmate)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh/site-functions/_aws

export BUNDLER_EDITOR="mate -w"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.zshrc-local ]; then; source ~/.zshrc-local; fi
