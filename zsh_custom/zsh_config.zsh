zstyle ':completion::approximate:' max-errors 1 numeric
autoload -U compinit && compinit

if [[ -s "$HOME/.dir_colors" ]]; then
    eval "$(dircolors --sh "$HOME/.dir_colors")"
else
    eval "$(dircolors --sh)"
fi
