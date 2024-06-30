if status is-interactive
    fastfetch
    # Commands to run in interactive sessions can go here
end

fzf --fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/leo/miniconda3/bin/conda
    eval /home/leo/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/leo/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/leo/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/leo/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
