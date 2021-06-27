# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/junhyungchang/.oh-my-zsh"

# Zsh style
ZSH_THEME="powerlevel10k/powerlevel10k"
TYPEWRITTEN_SYMBOL=">"
TYPEWRITTEN_PROMPT_LAYOUT="singleline"
TYPEWRITTEN_RELATIVE_PATH="adaptive"

# IDK
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/Users/junhyungchang/bin:$PATH"
export TERM=xterm-256color
source /Users/junhyungchang/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Variables
dark_theme="seoul256"
light_theme="seoul256-light"

# Aliases
alias python='python3'
alias dotfiles='/usr/bin/git --git-dir=/Users/junhyungchang/.dotfiles/ --work-tree=/Users/junhyungchang'
alias vim='nvim'

# Startup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
