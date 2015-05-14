# Misc tweaks
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8
export EDITOR=vim

# Go setup
export GOPATH=/home/raphael/go
export PATH=$PATH:/home/raphael/src/go/bin:$GOPATH/bin

# Prompt
function _update_ps1() {
  export PS1="$(powerline-shell-go)"
}
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# cdg
function cdg() {
  cd `gcd $*`
}

# aliases
source ~/.bash_aliases
