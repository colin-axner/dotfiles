#! /bin/bash

# I use this to add fancy stuff when I use a fresh cloud instance

# colorscheme
git clone https://github.com/sainnhe/everforest.git
cp everforest/autoload/everforest.vim ~/.vim/autoload/
cp everforest/colors/everforest.vim ~/.vim/colors/everforest.vim
cp everforest/doc/everforest.txt ~/.vim/doc/
cp everforest/autoload/airline/themes/everforest.vim ~/.vim/autoload/airline/themes/

# go plugin
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go

# airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline

echo "run :helptags ~/.vim/pack/dist/start/vim-airline/doc"


