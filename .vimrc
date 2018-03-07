"syntax for vimrc is white space sensitive
"be careful when spacing

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
"sets fold based on indentation
