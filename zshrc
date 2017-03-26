export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias yanzay='ssh yanzay@yanzay.com -t "tmux a"'

export PATH=$PATH:~/go/bin
export EDITOR=vim

alias osmc='ssh osmc@yanzay.com -p 2222'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

