export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="funky"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

function pokemans() {
  pokemon-colorscripts --no-title -rn chandelure,arbok,nidoking,gengar,snorlax,mimikyu,spectrier
}
pokemans


source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Aliases
alias ls='eza -hla --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias vim="nvim"
alias zshrc="vim ~/.zshrc"
alias pvenv="source ./.venv/bin/activate"
alias lg="lazygit"
alias rl="source ~/.zshrc"
alias nvimconf="cd ~/.dotfiles/nvim/.config/nvim ; nvim ; cd -"
alias clear="clear;pokemans"
alias neofetch="fastfetch"


# ZOXIDE
eval "$(zoxide init zsh --cmd cd)"

