# if [ "$TMUX" = "" ]; then tmux; fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/junhyungchang/.oh-my-zsh"

# Zsh style
ZSH_THEME="typewritten"
TYPEWRITTEN_SYMBOL="$"
# TYPEWRITTEN_SYMBOL="􀊄"
TYPEWRITTEN_PROMPT_LAYOUT="singleline"
TYPEWRITTEN_RELATIVE_PATH="adaptive"

# IDK
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
source /Users/junhyungchang/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Variables
dark_theme="seoul256"
light_theme="seoul256-light"

# Commands
alias light-theme="kitty @ set-colors -a '~/.config/kitty/themes/$light_theme.conf'"
alias dark-theme="kitty @ set-colors -a '~/.config/kitty/themes/$dark_theme.conf'"
alias python='python3'
alias dotfiles='/usr/bin/git --git-dir=/Users/junhyungchang/.dotfiles/ --work-tree=/Users/junhyungchang'

function kitty-theme() {
    kitty @ set-colors -a "~/.config/kitty/themes/$1.conf"
    sed -i '' "2s#.*#include ./themes/$1.conf#" .config/kitty/kitty.conf
}

function wallpaper() {
    sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '$1'" && killall Dock 
}

function alacritty-theme() {
    sed -i '' "2s#.*#- ~/.config/alacritty/themes/$1.yml#" .config/alacritty/alacritty.yml
}

function fzfpw() {
    fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'
}

# Startup

# if [[ $(defaults read -g AppleInterfaceStyle) == "Dark" ]]; then
#     kitty-theme nord
# else
#     kitty-theme polar
# fi

neofetch


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
