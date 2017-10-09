#!/bin/zsh
cd ~
mv ~/.vimrc ~/.vimrc.bak
rm -rf ~/.vim
rm -rf ~/.vim_tmp
ln -s ~/.dotfiles/vimrc .vimrc
ln -s ~/.dotfiles/vim_runtime .vim_runtime
mkdir -p ~/.vim_tmp/undodir
mkdir -p ~/.vim_tmp/backup
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/.dotfiles/zsh_custom/zshrc .zshrc
# ln -s ~/.dotfiles/zprezto .zprezto
# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  # ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done
mv ~/.bashrc ~/.bashrc.bak
ln -s ~/.dotfiles/bashrc .bashrc
mv ~/.tmux.conf .tmux.conf.bak
ln -s ~/.dotfiles/tmux.conf .tmux.conf
mv ~/.ssh ~/.ssh.bak
ln -s ~/.dotfiles/ssh .ssh
# wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O .dotfiles/dir_colors
ln -s ~/.dotfiles/dir_colors .dir_colors
