"syntax for vimrc is white space sensitive
"be careful when spacing

"**********Vundle**********
"vim plugin manager
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"NERDTree - file system explorer
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

"**********NERDTree**********
"file system explorer (uses Vundle)
"open NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"remap Ctrl^N to NERDTree Toggle
map <C-n> :NERDTreeToggle<CR>

"**********clang_complete**********
"autocomplete for C/C++ code
" path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
let g:clang_library_path='/usr/lib64/libclang.so.3.8'

"**********TABS**********
"number of spaces per tab read
set tabstop=10
"number of spaces per tab inserted
set softtabstop=10
"turns tab insertion into num spaces instead of one tab
"useful for tab sensitive languages 
set expandtab

"show line numbers to the left of editor
set number

"turns on filetype detection
"allows loading of specific language indentation
"based on file detection
filetype indent on

"shows options for autocomplete when searching through files
set wildmenu

"highlights matching parenthesis-like character
set showmatch

"searches as characters are entered
set incsearch
"highlights search matches
set hlsearch

"**********FOLDS**********
"enable folding
set foldenable
"opens num folds at the start
set foldlevelstart=10
"sets max level of nested folds
set foldnestmax=10
"remaps open/close folds to space
nnoremap <space> za
"sets fold based on indentatioe
