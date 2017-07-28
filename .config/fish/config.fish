# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/raphael/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set fish_greeting ""

# emacs ansi-term support
if test -n "$EMACS"
  function fish_title
    true
  end
  set -x TERM eterm-color
end

# icons
source ~/.local/share/icons-in-terminal/icons.fish

# bobthefish setup
set -g theme_color_scheme gruvbox

alias vi=nvim
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

set -gx GOPATH /home/raphael/go
set -gx PATH $PATH $GOPATH/bin $HOME/scripts
set -gx EDITOR nvim

function cdg
    cd (gcd $argv)
end
