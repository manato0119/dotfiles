export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="maran"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# locale
export LESSCHARSET=utf-8
export LANG=ja_JP.UTF-8
export KCODE=u

# alias
alias vi='vim'
alias clip="nc localhost 8377"
