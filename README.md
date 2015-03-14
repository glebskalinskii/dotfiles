#DOTFILES

##INSTALATION

1. Clone repo
2. Run ```./setup-a-new-machine.sh``` to install all things.
3. Run ```./sync.sh``` script to create symlinks and backup old files.
4. Install [solorized theme](http://ethanschoonover.com/solarized/vim-colors-solarized) for terminal.
5. Install vim plugins ```vim +PluginInstall```

##VIM/TMUX

#####TMUX
If vim doesn't display correct colors run ```$ screen_terminfo="screen-256color"```

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

Upgrading your version of vim(done on running setup-a-new-machine.sh):
```
brew install vim --override-system-vi
```

Issue on github: [https://github.com/gmarik/Vundle.vim/issues/167](https://github.com/gmarik/Vundle.vim/issues/167)
