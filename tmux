# Powerline setup
source "/usr/share/powerline/bindings/tmux/powerline.conf"

# set-option -g default-terminal "screen-256color"
# This does most of the heavy lifting for your mouse BUT
set-option -g mouse on
# This script does a better job on Ubuntu.
run-shell ~/.tmux/tmux-better-mouse-mode/scroll_copy_mode.tmux
set-option -g history-limit 20000
set-window-option -g mode-keys vi
set -g @emulate-scroll-for-no-mouse-alternate-buffer "on"


