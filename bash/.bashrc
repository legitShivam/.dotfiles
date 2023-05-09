# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
[[ $- == *i* ]] &&
  source "$HOME/.local/share/blesh/ble.sh" --attach=none

# vi mode
if [[ $- == *i* ]]; then # in interactive session
  bind 'set editing-mode vi'
fi


# yay config
alias search="yay -Slq | fzf -m --preview 'cat <(yay -Si {1}) <(yay -Fl {1} | \"{print \$2}\")' | xargs -ro yay -S" 


# Custom aliases
alias cls='clear'
alias c='clear'
alias mk='mkdir'


# For zoxide
eval "$(zoxide init bash --cmd cd)"


# windows application aliases
alias files="explorer.exe ."
alias winget="winget.exe"
alias choco="choco.exe"
alias cmd="cmd.exe"
alias powershell="powershell.exe" 
alias wsl="wsl.exe"


# Git alias
alias gitprune="git gc --prune=now"


# exa ls configurations
alias l='exa --icons'
# alias l='exa -ons'
alias ls='exa --icons'
alias la='exa --icons -a'
alias lf='exa --icons -a -F'
alias ld='exa --icons -a -d'
alias lt='exa --icons -a -T'
alias lr='exa --icons -a -r'

alias ll='exa --icons -1'
alias lla='exa --icons -a -1'
alias lfl='exa --icons -a -F -l'
alias ldl='exa --icons -a -d -l'
alias ltl='exa --icons -a -T -l'
alias lrl='exa --icons -a -T -l'

alias lh='exa --icons -h'


# oh-my-posh configs
eval "$(oh-my-posh init bash)"


[[ ${BLE_VERSION-} ]] && ble-attach


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/codereaper/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/codereaper/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/codereaper/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/codereaper/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
