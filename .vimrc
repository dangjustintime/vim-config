"----------NO PLUGIN VERSION----------
" syntax for vimrc is white space sensitive
" be careful when spacing

set nocompatible              " be iMproved, required
filetype off                  " required

"----------LINE NUMBERS----------
" show line numbers to the left of editor
set number relativenumber

"----------COLUMN COLOR----------
" highlights columns past 80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=0 guibg=lightgrey


"----------WORD WRAP----------
" turn off text wrap
set nowrap

"----------RULER----------
" turn on location of cursor at the bottom right
set ruler

"----------TABS----------
" default tab settings
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
" sets tab to 2 spaces for cpp files
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

 "----------ETC----------
" turns on filetype detection
" allows loading of specific language indentation
" based on file detection
filetype indent on
" enables color scheme to syntax
syntax on


" shows options for autocomplete when searching through files
set wildmenu

" highlights matching parenthesis-like character
set showmatch

" disable highlights search matches
set nohlsearch
