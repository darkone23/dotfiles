#! /bin/bash
echo 'Are you sure you want to run this script?'
echo 'It will erase your current bash and vim configs.'
read -p '$' -n 1
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo
  rm ~/.bashrc
  rm ~/.vimrc
  rm ~/.vim
  cp vcprompt.py ~/bin
  echo . ~/bin/dotfiles/bashrc > ~/.bashrc
  ln -s ~/bin/dotfiles/.resources/tmux.sh ~/bin/tm
  ln -s ~/bin/dotfiles/tmux.conf ~/.tmux.conf
  ln -s ~/bin/dotfiles/vimrc ~/.vimrc
  ln -s ~/bin/dotfiles/vim ~/.vim
  . ~/.bashrc
else
  echo && echo 'Okay, no changes made.'
fi
