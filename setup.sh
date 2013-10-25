files=$(ls)

mkdir $HOME/dotfiles_backup 2> /dev/null

for fileName in ${files[@]}
do
	echo $fileName 
	mv $HOME/.$fileName $HOME/dotfiles_backup 2> /dev/null
	echo $fileName
	ln -s $HOME/dotfiles/$fileName $HOME/.$fileName
done

