#!/bin/bash

# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
#===========================================================================================

# Variables

homedir=~/dotfiles                    # dotfiles directory
filesdir=$homedir/files
olddir=~/dotfiles_old             # old dotfiles backup directory

# cd into dotfies dir
cd "$(dirname "$0")"

files="$(find files -depth 1 -name '*' | cut -d'/' -f2)"

#===========================================================================================


# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

for file in $files ; do 
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/$file $olddir
	echo $file 
	echo "Creating symlink to $file in home directory."
	ln -s $filesdir/$file ~/$file
done
