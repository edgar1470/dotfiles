" base on https://github.com/sheerun/vimrc
" make Vim behave in a more useful way
set nocompatible
" don't show intro message when starting vim
set shortmess+=I
" load filetype settings
if has('autocmd')
    filetype plugin indent on
endif
" enable syntax highlighting
if has('syntax')
    syntax enable
endif
" use indent of previous line on new lines
set autoindent
" allow backspace in insert mode.
" https://cenalulu.github.io/linux/why-my-backspace-not-work-in-vim/
set backspace=indent,eol,start
" don't scan included files. The .tags file is more efficiency. help 'complete'
set complete-=i
" disable octal format for number processing.
set nrformats-=octal
" indent use 4 spaces
set smarttab
set shiftwidth=4
set softtabstop=4
" use spaces instead of tabs
set expandtab
" highlight completed searches
set hlsearch
" start searching before pressing enter.
set incsearch
" always show window statuses, even if there's only one
set laststatus=2
" show the line and column number of the cursor position
set ruler
" display color column
set colorcolumn=80
" highlight the text line of the cursor with CursorLine
set cursorline
" more colorful
set t_Co=256
set background=dark
" keep much more command and search history
set history=10000
"keep 1 lines above/below the cursor when scrolling
set scrolloff=1
" keep 15 columns next to the cursor when scrolling horizontally.
set sidescroll=1
set sidescrolloff=15
" display line number
set number
set relativenumber
" when both on searchs with no capitals are case insensible,
" while searches with a capital characters are case sensitive.
set ignorecase
set smartcase
" use dash as word separator.
set iskeyword+=-
" autocomplete commands using nice menu in place of window status.
" " enable `Ctrl-N` and `Ctrl-P` to scroll through matches.
set wildmenu
set wildmode=list:longest   " tab press completes and lists
silent! set wildignorecase  " case insensitive, if supported
" ignored the list of file patterns when expanding wildchars
set wildignore+=*.o,*.obj,*.out,*.bin
set wildignore+=.git,.svn
set wildignore+=*.zip,*.rar,*.tar,*.tar.gz,*.tar.bz2,*.tar.xz,*.tgz
set wildignore+=*.swp,*~
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif,*.pdf,*.PDF
" force use utf-8 encoding
set encoding=utf-8
" Set default whitespace characters when using `:set list`
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" delete comment character when joining commented lines
if v:version > 703 || v:version == 703 && has("patch541")
    set formatoptions+=j
endif
" reload unchanged files automatically.
set autoread
" enable backup and undo files by default.
let s:dir = '~/.vim/cache'
" automatically create directories for backup and undo files.
if !isdirectory(expand(s:dir) . '/backup')
    call system("mkdir -p " . expand(s:dir) . "/backup")
endif
if !isdirectory(expand(s:dir) . '/undo')
    call system("mkdir -p " . expand(s:dir) . "/undo")
endif
let &backupdir = expand(s:dir) . '/backup//'
let &undodir = expand(s:dir) . '/undo//'
set undofile
" disable swap to prevent annoying messages.
set noswapfile
" enable fold
" set foldmethod=indent
" set foldenable
" give me a prompt instead of just rejecting risky :write, :saveas
set confirm
" clear default 'comments' value, let the filetype handle it
set comments=
" don't assume I'm editing C; let the filetype set this
set include=
" options for file search with gf/:find
set path-=/usr/include  " let the C/C++ filetypes set that
set path+=**            " search current directory's whole tree
set lazyredraw " don't redraw the screen during batch execution
set linebreak " Break lines at word boundaries
set showbreak=...  " prefix wrapped rows with three dots
" no terminal mouse, even if we could
silent! set ttymouse=
" set diff mode  https://vimways.org/2018/the-power-of-diff/
" set diffopt+=algorithm:patience
" set diffopt+=indent-heuristic
" search upwards for tags file instead only locally
if has('path_extra')
    setglobal tags-=./tags tags^=./tags;
endif

" 高亮显示末尾的空格
highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()
" autocmd BufWritePre * :%s/\s\+$//e

" open all the selected files
function g:WuOpenAllFiles()
    edit <cfile>
    bfirst
endfunction

" add c header file guard
function g:WuHeader(s)
    let s:headername = "__" . toupper(a:s) . "__"
    " call append(0, ["#ifndef " . toupper(a:s), "#define " . toupper(a:s), ""])
    " call append(line("$"), ["#endif /*" . toupper(a:s) . "*/"])
    call append(0, ["#ifndef " . s:headername, "#define " . s:headername, ""])
    call append(line("$"), ["#endif //  " . s:headername])
endfunction
