#! /bin/bash

echo 'Are you sure you want to run this script?'
echo 'It will erase your current oh-my-zsh, tmux, git, and vim configs.'
read -p '$' -n 1
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo
  rm ~/.zshrc
  rm ~/.vimrc
  rm ~/.tmux.conf
  rm ~/.gitconfig
  rm -r ~/.vim
  ln -s ~/bin/dotfiles/.resources/tmux.sh ~/bin/tm
  ln -s ~/bin/dotfiles/tmux.conf ~/.tmux.conf
  ln -s ~/bin/dotfiles/gitconfig ~/.gitconfig
  ln -s ~/bin/dotfiles/zshrc ~/.zshrc
  ln -s ~/bin/dotfiles/zsh/egghead.zsh-theme ~/.oh-my-zsh/themes/egghead.zsh-theme
  ln -s ~/bin/dotfiles/vimrc ~/.vimrc
  ln -s ~/bin/dotfiles/vim ~/.vim
  . ~/.zshrc
else
  echo && echo 'Okay, no changes made.'
fi
