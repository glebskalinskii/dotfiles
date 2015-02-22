#DOTFILES

##INSTALATION

1. Clone repo
2. Run ```install.sh``` script to create symlinks and backup old files.

##VIM/TMUX

#####VUNDLE
Vundle's .vimrc config produces the following error when editing GIT Messages:
```
$ git commit
error: There was a problem with the editor 'vi'.
```
######Solution

Setting your GIT editor to vim (instead of vi):
```
git config --global core.editor $(which vim)
```

Upgrading your version of vim:
```
brew install vim --override-system-vi
```

Issue on github: [https://github.com/gmarik/Vundle.vim/issues/167](https://github.com/gmarik/Vundle.vim/issues/167)
