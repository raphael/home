# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load custom aliases
. $HOME/.bash_aliases

# Set PATH for golang
set -gx PATH $PATH $HOME/src/go/bin $HOME/go/bin
set -gx GOPATH $HOME/go

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'agnoster'
Plugin 'theme'

# disable FISH greeting
set fish_greeting ""

# cdg support
function cdg
   cd (gcd $argv)
end
