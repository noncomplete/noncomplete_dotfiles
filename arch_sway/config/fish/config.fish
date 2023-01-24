if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias vim="nvim"
alias vi="nvim"
alias :q="exit"
alias :wq="exit"
alias :x="exit"
alias ll="ls -ahl --color"
alias ls="ls -a --color"
alias tt="taskwarrior-tui"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/noncomplete/miniconda3/bin/conda
    eval /home/noncomplete/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

