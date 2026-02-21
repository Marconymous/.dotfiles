export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="marconymous"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(
    git
    archlinux
)

source $ZSH/oh-my-zsh.sh

function pokemans() {
  pokemon-colorscripts --no-title --random
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

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"
