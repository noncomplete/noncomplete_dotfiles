if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Useful Aliases
alias vim="nvim"
alias :q="exit"
alias :wq="exit"
alias ll="ls -ahl --color"
alias ls="ls -a --color"
alias sko='xdg-open "$(sk)"'

# Set Path variables
fish_add_path /home/noncomplete/Documents/julia-1.7.2-linux-x86_64/julia-1.7.2/bin 
fish_add_path /home/noncomplete/Downloads/Zotero-5.0.96.3_linux-x86_64/Zotero_linux-x86_64 
fish_add_path /home/noncomplete/.local/bin 
fish_add_path /home/noncomplete/.config


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/noncomplete/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

#Starship Prompt
starship init fish | source

# Autojump-rs source 
# (download from https://github.com/xen0n/autojump-rs/blob/develop/integrations/autojump.fish)
source ~/.config/fish/autojump.fish

# skim (fzf replacement rs) keybinds
source ~/.config/fish/key-bindings.fish
