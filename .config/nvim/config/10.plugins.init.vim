" {{{ color scheme
" let g:solarized_termcolors=256
"set background=light
" set background=dark
" colorscheme solarized
" }}}
"
" {{{ gutentags search stop flag
let s:vim_tags=expand('~/.cache/tags')
let g:gutentags_project_root=['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile='.tags'
let g:gutentags_cache_dir=s:vim_tags
let g:gutentags_ctags_extra_args=['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args+=['--c++-kinds=+px']
let g:gutentags_ctags_extra_args+=['--c-kinds=+px']

if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" enalbe gtags moule
let g:gutentags_modules=['ctags', 'gtags_cscope']
" forbid gutentags adding gtags database
let g:gutentags_auto_add_gtags_cscope=0

" }}}
"
" {{{ asyncrun
" let g:asyncrun_open = 6
" let g:asyncrun_bell = 1
" nnoremap <F7> :call asyncrun#quickfix_toggle(6)<cr>
" }}}
"
" {{{ nerdtree
" open NERDTree automatically when vim starts up on openning a directory
" autocmd StdinReadPre * let s:std_in = 1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" }}}
"
" {{{ echodoc
set noshowmode " use cmdline to show function parameters
" }}}
"
" {{{ ale  asynchronous linter engine
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_c_gcc_options = '-Wall  -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall  -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck__options = ''
" }}}

" {{{ ack use ag replace inside grep
if executable('ag')
    let grepprg='ag\ --vimgrep\ $* set grepformat=%f:%l:%c:%m' " use ag replace the vimgrep
    let g:ackprg = 'ag --vimgrep' " use ag replace ack
    let g:ackhighlight = 1  " highlight the search result
    " let g:ack_autoclose = 1 " close quickfix
    let g:ackpreview = 1  " automagically open the file
endif
" }}}

" {{{ gtags  gtags-cscope
let g:Gtags_Auto_Update = 1
" To use the default key/mouse mapping:
let GtagsCscope_Auto_Map = 0
"	explanation		command
"	----------------------------------------------------------
"	Find symbol		:cs find 0 or s
"	Find definition		:cs find 1 or g
"	Find functions called by this function	(not implemented)
"	Find reference		:cs find 3 or c
"	Find text string	:cs find 4 or t
"	Find egrep pattern	:cs find 6 or e
"	Find path		:cs find 7 or f
"	Find include file	:cs find 8 or i
"
" You can move tag list using:
"	Go to the next tag	 :tn
"	Go to the previous tag	 :tp
"	Pop tag stack		 :pop
"
" use below keymap
"nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-\><SPACE> :cs find<SPACE>
"nmap <C-@><SPACE> :scs find<SPACE>
"nmap <C-@><C-@><SPACE> :vert scs find<SPACE>
"nmap <F2> :copen<CR>
"nmap <F3> :cs find d <C-R>=expand("<cword>")<CR>:<C-R>=line('.')<CR>:%<CR>
"nmap <F4> :cclose<CR>
" To ignore letter case when searching:
let GtagsCscope_Ignore_Case = 1
" If you hope auto loading:
let GtagsCscope_Auto_Load = 1
" To use 'vim -t ', ':tag' and '<C-]>'
set cscopetag
" }}}

