export EDITOR=nvim

# Plugins
autoload -U compinit
compinit

source $HOME/.zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $HOME/.zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $HOME/.zsh/custom/plugins/omz-git/git.plugin.zsh
source $HOME/.zsh/custom/plugins/you-should-use/you-should-use.plugin.zsh

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY
setopt HIST_SAVE_NO_DUPS

# Path variables
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH=${PATH}:`go env GOPATH`/bin
export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin

# Function to create a directory and cd into the newly created directory
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}

# Replace ls with eza
alias ls="eza --icons"
alias ll="eza --icons -lh"
alias la="eza --icons -lAh"
alias l="eza --icons -lah"
alias tree="eza --icons -T"

# Directory aliases
alias -g ..='cd ..'
alias -g ...='cd ../..'
alias -g ....='cd ../../..'
alias -g .....='cd ../../../..'

# Keybindings
bindkey "^N" down-line-or-history
bindkey "^P" up-line-or-history

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7
--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff 
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'

# Zoxide
eval "$(zoxide init zsh)"

# Oh My Posh
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/pure.omp.json)"

fastfetch
