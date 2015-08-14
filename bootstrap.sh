# Variables
dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .vimrc .vim"

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
	echo "Copying any existing dotfiles from ~ to $olddir"
	cp ~/$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/$file
done

source ~/.bashrc
source ~/.vimrc
