#!/bin/bash

pushd bundle

# code completion
git clone https://github.com/ycm-core/YouCompleteMe.git

# git plugin
git clone https://github.com/tpope/vim-fugitive.git

# place bookmarks in files
git clone https://github.com/MattesGroeger/vim-bookmarks.git

# fuzzy-search for files
git clone https://github.com/ctrlpvim/ctrlp.vim.git

# filetree plugin
git clone https://github.com/preservim/nerdtree.git

# shows functions, constants etc. on a sidebar
git clone https://github.com/preservim/tagbar.git

# modern statusbar on the bottom
git clone https://github.com/vim-airline/vim-airline

# syntax plugins
git clone https://github.com/martinda/Jenkinsfile-vim-syntax.git
git clone https://github.com/aklt/plantuml-syntax.git


popd
