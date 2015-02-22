#DOTFILES

##VIM/TMUX

#####VUNDLE
Vundle's .vimrc config produces the following error when editing GIT Messages:
```
$ git commit
error: There was a problem with the editor 'vi'.
```
######Solution

Setting your editor to vim (instead of vi):
```
git config --global core.editor $(which vim)
```

Upgrading your version of vim:
```
brew install vim --override-system-vi
```
