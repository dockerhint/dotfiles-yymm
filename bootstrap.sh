DOT_FILES=( .zshrc .zshrc.env .gitconfig .screenrc .vimrc .vim .tmux.conf .tmux-powerline .hgrc )

for file in ${DOT_FILES[@]}
do
	ln -s -i $HOME/dotfiles/$file $HOME/$file
done


function askYesOrNo {
  MSG=$1
  while :
  do
    echo -n "${MSG} y/N: "
    read ans
    case $ans in
    [yY]) return 0 ;;
    [nN]) return 1 ;;
    esac
  done
}

#askYesOrNo ">>> GUI?"
#if [ $? -eq 0 ]; then
#	ln -s -i $HOME/dotfiles/.vimperatorrc $HOME/.vimperatorrc
#	ln -s -i $HOME/dotfiles/.vimperator $HOME/.vimperator
#fi
