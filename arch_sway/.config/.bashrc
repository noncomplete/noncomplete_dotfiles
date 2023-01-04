#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Variables
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_FORCE_DPI=physical
export QT_QPA_PLATFORMTHEME=qt5ct

# Aliases
alias nnn='nnn -de'
alias vim='nvim'
alias :q='exit'
alias :wq='exit'
alias :x='exit'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/noncomplete/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/noncomplete/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/noncomplete/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/noncomplete/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

