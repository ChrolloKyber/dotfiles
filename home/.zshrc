export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robyrussell"

DISABLE_AUTO_TITLE="true"↲
ENABLE_CORRECTION="true"

plugins=(git)
source $ZSH/oh-my-zsh.sh

export MANPAGER="nvim +Man!"
export PATH="$PATH:$HOME/.local/bin:$HOME/go/bin:$HOME/.local/share/nvim/mason/bin"↲
alias grep='rg'
alias cat='bat -p'
alias ls='lsd'
alias ks='kitten ssh'
alias kssh='kitten ssh'
alias gaming='gamescope --mangoapp -e -- steam -steamdeck -gamepadui -steamos3'
alias icat='kitten icat'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(fzf --zsh)
eval "$(starship init zsh)"
