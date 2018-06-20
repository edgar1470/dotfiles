" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
" colorscheme
Plug 'altercation/vim-colors-solarized'

"Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Rip-Rip/clang_complete'
" Plug 'zchee/deoplete-clang'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/denite.nvim'
"{{{  deoplete clang
Plug 'zchee/deopletepclang'
"}}}

Plug 'vim-scripts/taglist.vim'
Plug 'skywind3000/asyncrun.vim'
" trailing whitespace
Plug 'bronson/vim-trailing-whitespace'
" just trailing whitespace of the line you edit
Plug 'thirtythreeforty/lessspace.vim'
" switch *.c/*.h
Plug 'vim-scripts/a.vim'
" {{{ vim-airline  to replace powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}
" {{{ vim-commentary
Plug 'tpope/vim-commentary'
" }}}
" {{{ fast grep  use ag 
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'
" }}}
" {{{ full path fuzzy file/buffer/mru/tag find for vim
Plug 'ctrlpvim/ctrlp.vim'
" }}}
"
"{{{
Plug 'ludovicchabant/vim-gutentags'
"}}}
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

