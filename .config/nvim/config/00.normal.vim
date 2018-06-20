" set nocompatible  "NVIM is always nocompatible
set guicursor=   " to fix prompt 001b
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set cindent
set history=1000
set undolevels=1000
set autoread
set number        " Show line numbers
set relativenumber
set cursorline
set hls
set ignorecase
set wildignore=*.o,*.obj,*.a,*.d,*.zip,*.tar,GPATH,GRTAGS,GTAGS,tags
set smartcase
set encoding=utf-8 " necessary to show unicode glyphs
set foldenable " turn on folding
set foldmethod=marker " fold on the marker
set t_Co=256 " explicitly tell vim that the terminal supports 256 colors
" syntax enable     " Use syntax highlighting
syntax on " Use syntax highlighting
filetype plugin indent on " vundle plugin Required
set clipboard+=unnamedplus " copy use system clipboard

" markdown file recogniton
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set tags=./.tags;,.tags
