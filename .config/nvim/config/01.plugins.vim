
call plug#begin('~/.config/nvim/plugged')
"{{{ beautify display
" colorscheme
Plug 'altercation/vim-colors-solarized'
" vim-airline  to replace powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"}}}
"
"{{{ for c devolopment
" toggle *.c/*.h
Plug 'vim-scripts/a.vim'
" mainly used for locating files, buffers, mrus, tags in large project.
Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
" Plug 'ctrlpvim/ctrlp.vim'  " replaced by LeaderF

" {{{ Language Server Protocol
" https://microsoft.github.io/language-server-protocol/implementors/servers/
"  https://langserver.org/#implementations-server
"
" Server for C language family  clangd/cquery/ccls
" Client for vim/nvim
" vim/neovim	Nate Bosch	github.com/natebosch/vim-lsc
" vim/neovim	Prabir Shrestha	github.com/prabirshrestha/vim-lsp
" vim/neovim	Junfeng Li	github.com/autozimu/LanguageClient-neovim
" vim/neovim	w0rp	github.com/w0rp/ale
"
" Plug 'autozimu/LanguageClient-neovim', {
" 	\ 'branch': 'next',
" 	\ 'do': 'bash install.sh',
" 	\ }
" asynchronous completion framework for vim8/nvim
Plug 'Shougo/deoplete.nvim', {
	\ 'do': ':UpdateRemotePlugins'
	\ }
""
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'ajh17/vimcompletesme'
Plug 'justmao945/vim-clang'
" }}}
"
"
Plug 'Shougo/echodoc.vim'
Plug 'vim-scripts/taglist.vim'

" Plug 'scrooloose/nerdtree'
" for code browser and complete
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
"  full path fuzzy file" /buffer/mru/tag find for vim
" Plug 'skywind3000/asyncrun.vim'
" Plug 'Shougo/denite.nvim'
" Plug 'Shougo/deoplete-clangx'
" Plug 'Valloric/YouCompleteMe' " <==> deoplete
" Plug 'Rip-Rip/clang_complete'
" Plug 'Shougo/neoinclude.vim'
" Asynchronous Lint Engine  LSP client
" Plug 'w0rp/ale'
"}}}

" trailing whitespace
Plug 'bronson/vim-trailing-whitespace'
" just trailing whitespace of the line you edit
"Plug 'thirtythreeforty/lessspace.vim'
"  vim-commentary
Plug 'tpope/vim-commentary'
"
"  fast grep  use ag
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

Plug 'edgar1470/gtags.vim'
"
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" config after plugin install
" some plugin config will be in a sperate file if it not so simple
"
" {{{ colorscheme
let g:solarized_termcolors=256
"set background=light
set background=dark
colorscheme solarized
" }}}

" {{{ LeaderF
" let g:Lf_ShortcutF = '<c-p>'
nnoremap <c-p> :Leaderf file<cr>
" }}}
"
"
if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd']},
                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                    \ })
        autocmd FileType c setlocal omnifunc=lsp#complete
        autocmd FileType cpp setlocal omnifunc=lsp#complete
        autocmd FileType objc setlocal omnifunc=lsp#complete
        autocmd FileType objcpp setlocal omnifunc=lsp#complete
    augroup end
endif
