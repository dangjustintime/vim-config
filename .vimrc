" syntax for vimrc is white space sensitive
" be careful when spacing

"----------Vundle----------
" vim plugin manager
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree - file system explorer
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

"----------NERDTree----------
" file system explorer (uses Vundle)
" remap Ctrl^N to NERDTree Toggle
map <C-n> :NERDTreeToggle<CR>

"----------clang_complete----------
" autocomplete for C/C++ code
" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
let g:clang_library_path='/usr/lib64/libclang.so.3.8'

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

"----------ETC----------
" turns on filetype detection
" allows loading of specific language indentation
" based on file detection
filetype indent on

" shows options for autocomplete when searching through files
set wildmenu

" highlights matching parenthesis-like character
set showmatch

" highlights search matches
set hlsearch

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
" remaps r to redo in normal mode
:nmap r :redo<CR>
" disable arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
