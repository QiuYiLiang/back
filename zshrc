# zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export PATH="$HOME/.bin/:$PATH"
unalias md

# xinit
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
source /usr/share/nvm/init-nvm.sh

# pnpm
export PNPM_HOME="/home/qyl/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# yarn
export PATH="$HOME/.config/yarn/global/node_modules/.bin/:$PATH"

# tmux
if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
