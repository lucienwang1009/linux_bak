#!/bin/sh
set -e

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

# install youcompleteme
git clone --recursive https://github.com/ycm-core/YouCompleteMe.git ~/.vim_runtime/my_plugins/YouCompleteMe
cd ~/.vim_runtime/my_plugins/YouCompleteMe && ./install.py --clang-completer

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
