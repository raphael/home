# Misc tweaks
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8
export EDITOR=vim
export PATH=$PATH:$HOME/.bin:$HOME/scripts

# Go setup
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/src/go/bin:$GOPATH/bin

# Ruby setup
export PATH=$PATH:$HOME/.gem/ruby/2.2.0/bin

# Prompt
function _update_ps1() {
  export PS1="$(powerline-shell-go)"
}
export PROMPT_COMMAND="_update_ps1"
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# cdg
function cdg() {
  cd `gcd $*`
}

# aliases
source ~/.bash_aliases
