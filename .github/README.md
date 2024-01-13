[Learned from this article](https://www.atlassian.com/git/tutorials/dotfiles)

# Install at new system

``` shell
echo ".dotfiles" >> .gitignore
git clone --bare https://github.com/MigguLarge/dotfiles.git $HOME/.dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
