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


alias vi=nvim
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias gg=gitg
alias g=goav2

set -gx NVIM_TUI_ENABLE_TRUE_COLOR 1
set -gx GOPATH /home/raphael/go
set -gx PATH $PATH $GOPATH/bin $HOME/google-cloud-sdk/bin $HOME/scripts /opt/Soundnode

function cdg
    cd (gcd $argv)
end

# Example bobthefish color scheme:
set -g theme_color_scheme user

set -g __color_initial_segment_exit  fbf1c7 d65d0e --bold
set -g __color_initial_segment_su    fbf1c7 cc241d --bold
set -g __color_initial_segment_jobs  fbf1c7 458588 --bold

set -g __color_path                  504945 999999
set -g __color_path_basename         504945 fbf1c7 --bold
set -g __color_path_nowrite          660000 cc9999
set -g __color_path_nowrite_basename 660000 cc9999 --bold

set -g __color_repo                  b8bb26 0c4801
#set -g __color_repo                  98971a 0c4801
set -g __color_repo_work_tree        addc10 fbf1c7 --bold
#set -g __color_repo_dirty            cc241d fbf1c7
set -g __color_repo_dirty            fb4934 ffffff
set -g __color_repo_staged           d79921 3a2a03

set -g __color_vi_mode_default       999999 504945 --bold
set -g __color_vi_mode_insert        189303 504945 --bold
set -g __color_vi_mode_visual        f6b117 3a2a03 --bold

set -g __color_vagrant               48b4fb ffffff --bold
set -g __color_username              cccccc 255e87
set -g __color_rvm                   af0000 cccccc --bold
set -g __color_virtualfish           005faf cccccc --bold

