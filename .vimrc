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

"----------TABS----------
" default tab settings
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
" sets tab to 2 spaces for cpp files
autocmd FileType cpp setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType c setlocal expandtab shiftwidth=2 softtabstop=2

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

:nohl

"----------REMAPPINGS----------
" :nmap = normal mode
" :map! = insert mode
" <CR> = <Enter>
" maps Ctrl-b to go to the beginning of rile
:map! <C-b> <Esc>:1<CR>i
:nmap <C-b> :1<CR>
" maps Ctrl-e to go to the end of file
:map! <C-e> <Esc>:999<CR>i
:nmap <C-e> :999<CR>
" maps Ctrl-h to help (normal mode)
:map! <C-h> :help<CR>
:nmap <C-h> :help<CR>
" maps Ctrl-Left to :tabp
:map! <C-Left> <Esc>:tabp<CR>i
:nmap <C-Left> :tabp<CR>
" maps Ctrl-Right to :tabn
:map! <C-Right> <Esc>:tabn<CR>i
:nmap <C-Right> :tabn<CR>
" maps Ctrl-t to :tabe
:map! <C-t> <Esc>:tabe<Space>
:nmap <C-t> :tabe<Space>
" adds closing character to opening character
:map! ( ()<Left>
:map! [ []<Left>
:map! { {}<Left>
" maps Ctrl-r to replace
:nmap <C-r> :%s//g<Left><Left>
" maps r to redo in normal mode
:nmap r :redo<CR>
" maps m to place screen at the middle of the cursor
:nmap m zz
" maps n in normal mode to insert new line
:nmap n $i<Right><CR><Esc>
" maps t in normal mode to insert tabs
:nmap <Tab> ^i<Tab><Esc>l
" maps B in normal mode to move cursor to the beginning of current line
:nmap B ^
" maps E in normal mode to move cursor to the end of current line
:nmap E $
" disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
