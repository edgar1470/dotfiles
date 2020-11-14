" {{{ colorscheme
" set t_Co=256
" let g:solarized_termcolors=256
"set background=light
"set background=dark
" colorscheme solarized
colorscheme vombatidae
" colorscheme dream
" colorscheme dream-light
" colorscheme zenburn
" colorscheme hybrid
" colorscheme murphy
" colorscheme flatlandia
" }}}
"
" {{{  Leaderf for rg config
let g:Lf_RgConfig = [
            \ "--glob=!git/*",
            \ "--glob=!reference/thirdparty/*",
            \ "--glob=!middleware/thirdparty/*",
            \ "--glob=!*.sym",
            \ "--glob=!*.map",
            \ "--glob=!reference/actioncam/*",
            \ "--glob=!reference/dashcam/modules/ui/carrecorder/*",
            \ ]

" \ "--type-add web:*.{html,css,js}*",
" }}}
" \ "--glob=!osdrv/opensource/*",

" {{{ asyncrun.vim
" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6
" ring the bell to notify you job finished
let g:asyncrun_bell = 1
" F10 to toggle quickfix window
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
" }}}

" {{{ vim-dirdiff
" vim -c "DirDiff dir1 dir2"
" :DirDiff <dir1> <dir2>
let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,.git,*.o,*.su,*.o.cmd"
let g:DirDiffIgnore = "Id:,Revision:,Date:,SPDX-License-Identifier:"
" }}}

" {{{ Calendar
let g:calendar_task=1
" always show the week numbers
let g:calendar_week_number=1
" }}}

" {{{ gutentags
set csprg=gtags-cscope
" let $GTAGSLABEL = 'native-pygments'
" let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'
" enable gtags module
" let g:gutentags_modules = ['gtags_cscope', 'ctags']
" let g:gutentags_modules = ['gtags_cscope']
" generate datebases in my cache directory, prevent gtags files polluting my project
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建
" if !isdirectory(s:vim_tags)
"         silent! call mkdir(s:vim_tags, 'p')
" endif
" change focus to quickfix window after search (optional).
" let g:gutentags_plus_switch = 1
" let g:gutentags_define_advanced_commands = 1
" set statusline+=%{gutentags#statusline()}
" }}}

" " {{{ coc.nvim
" " if hidden is not set, TextEdit might fail.
" set hidden
" " Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup
" " Better display for messages
" set cmdheight=2
" " You will have bad experience for diagnostic messages when it's default 4000.
" set updatetime=300
" " don't give |ins-completion-menu| messages.
" set shortmess+=c
" " always show signcolumns
" set signcolumn=yes
" " }}}
" {{{ vim-lsp
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
" }}}
"
" {{{ asyncrun
let  g:asyncrun_open = 10
" }}}
"
" {{{ Tlist
let g:Tlist_GainFocus_On_ToggleOpen = 1
let g:Tlist_Show_One_File = 1
" }}}
