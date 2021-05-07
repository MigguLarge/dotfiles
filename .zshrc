# if [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/junhyungchang/.oh-my-zsh"

# Zsh style
ZSH_THEME="typewritten"
TYPEWRITTEN_SYMBOL="λ"
TYPEWRITTEN_PROMPT_LAYOUT="single-line"
TYPEWRITTEN_RELATIVE_PATH="adaptive"

# IDK
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export TERM=xterm-256color
source /Users/junhyungchang/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Variables
dark_theme="seoul256"
light_theme="seoul256-light"

# Aliases
# alias light-theme="kitty @ set-colors -a '~/.config/kitty/themes/$light_theme.conf'"
# alias dark-theme="kitty @ set-colors -a '~/.config/kitty/themes/$dark_theme.conf'"
alias python='python3'
alias dotfiles='/usr/bin/git --git-dir=/Users/junhyungchang/.dotfiles/ --work-tree=/Users/junhyungchang'
alias vim='nvim'

# Commands
# source ~/.config/scripts/kitty-theme
# source ~/.config/scripts/alacritty-theme
# source ~/.config/scripts/fzfpw
# source ~/.config/scripts/sd
# source ~/.config/scripts/frmrf
for f in ~/.config/scripts/*; do source $f; done
source ~/.bash_scripts
source ~/.sh_scripts
# alias now-playing='~/.config/scripts/now-playing'

# Startup

# if [[ $(defaults read -g AppleInterfaceStyle) == "Dark" ]]; then
#     kitty-theme nord
# else
#     kitty-theme polar
# fi

# neofetch
# pfetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
