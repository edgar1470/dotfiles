" {{{ use 'plug' to managment the plugins and itself
" https://github.com/junegunn/vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
           \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    augroup PLUG
        au!
        autocmd VimEnter * PlugInstall
    augroup END
endif
" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')
" {{{ colorscheme
    Plug 'altercation/vim-colors-solarized'
    Plug 'w0ng/vim-hybrid'
    Plug 'bling/vim-airline'
    Plug 'jordwalke/flatlandia'
    " Plug 'rakr/vim-one'
    Plug 'octol/vombatidae-vim'
    " Plug 'jnurmine/Zenburn'
    " Plug 'crusoexia/vim-dream'
    Plug 'reconquest/vim-colorscheme'
" }}}

" {{{ nice status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
" }}}

" {{{
    " A Vim cheat sheet that makes sense, inside Vim! <leader>?
    Plug 'lifepillar/vim-cheat40'
    Plug 'itchyny/calendar.vim'
    " edit the quickfix/location list freely
    Plug 'itchyny/vim-qfedit'
    Plug 'will133/vim-dirdiff'
    " text filtering and alignment
    Plug 'godlygeek/tabular'
    " https://castel.dev/post/lecture-notes-1/
    " ultiSnips is the ultimate solution for snippets in Vim.
    " track the engine.
    " Plugin 'SirVer/ultisnips'
    " snippets are separated from the engine. Add this if you want them:
    " Plugin 'honza/vim-snippets'
    " Trigger configuration. Do not use <tab> if you use
    " https://github.com/Valloric/YouCompleteMe.
    " let g:UltiSnipsExpandTrigger="<tab>"
    " let g:UltiSnipsJumpForwardTrigger="<c-b>"
    " let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    " If you want :UltiSnipsEdit to split your window.
    " let g:UltiSnipsEditSplit="vertical"
    " python libraries for smarter Vim coding
    " Plug 'reconquest/vim-pythonx'
    " Plug 'plasticboy/vim-markdown'
    "Plug 'wellle/tmux-complete.vim'
    " Plug 'mzlogin/vim-markdown-toc'
" }}}

" {{{ syntax highlighting
    " A solid language pack for Vim.
    Plug 'sheerun/vim-polyglot'
" }}}

" {{{ git wrapper so awesome
    " Plug 'tpope/vim-fugitive'
    " Yet another gitk clone for Vim
    Plug 'cohama/agit.vim'
" }}}

" an asynchronous fuzzy finder which is used to quickly locate files, buffers,
" mrus, tags, etc. in large project. <leader>f
" Plug 'Yggdroot/LeaderF', {'do': './install.sh'}

" display the indention levels with thin vertical lines
" Plug 'Yggdroot/indentLine'
" visually displaying indent levels in code
" Plug 'nathanaelkane/vim-indent-guides'

" {{{
" run shell commands in background and read output in the quickfix window in
" realtime
Plug 'skywind3000/asyncrun.vim'
" }}}

" {{{
" An ack/ag/pt/rg powered code search and view tool
Plug 'dyng/ctrlsf.vim'
" }}}

"{{{ for c devolopment toggle *.c/*.h
    Plug 'vim-scripts/a.vim'
    Plug 'vim-scripts/taglist.vim'
    " Plug 'Shougo/denite.nvim'
    " asynchronous completion framework for vim8/nvim
    " Plug 'Shougo/deoplete.nvim', {
    " 	\ 'do': ':UpdateRemotePlugins'
    " 	\ }
    " https://jonasdevlieghere.com/vim-lsp-clangd/
    " Using LSP & clangd in Vim
    " Plug 'prabirshrestha/async.vim'
    " Plug 'skywind3000/asyncrun.vim'
    " Plug 'prabirshrestha/vim-lsp'"
    " Plug 'ajh17/vimcompletesme'
"}}}

" {{{ comment stuff out.
    " Use gcc to comment out a line (takes a count),
    " gc to comment out the target of a motion
    " gc in visual mode to comment out the selection
    " :7,17Commentary
    " :g/TODO/Commentary. That's it.
    " My favorite file type isn't supported!
    " Relax! You just have to adjust 'commentstring':
    "autocmd FileType apache setlocal commentstring=#\ %s
    Plug 'tpope/vim-commentary'
" }}}

" {{{ tags for project
" Plug 'jsfaint/gen_tags.vim'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
" }}}

" {{{ ascii drawing
    Plug 'vim-scripts/Drawit'
" }}}
call plug#end()
" }}}
" {{{
" GTags https://zhuanlan.zhihu.com/p/36279445
" 1 compiled global version 6.6.3
" 2 pip install pygments (It is a generic syntax highlighter suitable)
" 3 let $GTAGSLABEL = 'native-pygments'
" GTAGSLABEL 告诉 gtags 默认 C/C++/Java 等六种原生支持的代码直接使用 gtags
" 本地分析器，而其他语言使用 pygments 模块。
" 4 let $GTAGSCONF = '/path/to/share/gtags/gtags.conf'
" GTAGSCONF 环境变量必须设置，否则会找不到 native-pygments 和 language map
" 的定义， Windows 下面在 gtags/share/gtags/gtags.conf，Linux 下要到
" /usr/local/share/gtags 里找，也可以把它拷贝成 ~/.globalrc ，Vim
" 配置的时候方便点。
" let $GTAGSLABEL = 'native-pygments'
" let $GTAGSCONF='/usr/local/share/gtags/gtags.conf'
" set csprg=gtags-cscope
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
" enable gtags module
" let g:gutentags_modules = ['ctags', 'gtags_cscope']
" change focus to quickfix window after search (optional).
" let g:gutentags_plus_switch = 1

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
" let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
" let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行
" let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" 禁用 gutentags 自动加载 gtags 数据库的行为
" let g:gutentags_auto_add_gtags_cscope = 0

" 检测 ~/.cache/tags 不存在就新建
" if !isdirectory(s:vim_tags)
"    silent! call mkdir(s:vim_tags, 'p')
" endif
" 少用 CTRL-] 直接在当前窗口里跳转到定义
" 多使用 CTRL-W ] 用新窗口打开并查看光标下符号的定义
" 或者 CTRL-W } 使用 preview 窗口预览光标下符号的定义。
"
"keymap desc
"<leader>cs     Find symbol (reference) under cursor
"<leader>cg     Find symbol definition under cursor
"<leader>cd     Functions called by this function
"<leader>cc     Functions calling this function
"<leader>ct     Find text string under cursor
"<leader>ce     Find egrep pattern under cursor
"<leader>cf     Find file name under cursor
"<leader>ci     Find files #including the file name under cursor
"<leader>ca     Find places where current symbol is assigned
" }}}

" {{{
"Check syntax (linting) and fix files asynchronously, with Language Server
"Protocol (LSP) integration in Vim
" Plug 'w0rp/ale'
" 对应语言需要安装相应的检查工具
" 显式指定linters 除此之外不可用
" let g:ale_linters_explicit = 1
"     let g:ale_linters = {
" \   'cpp': ['cppcheck', 'clang','gcc'],
" \   'c': ['cppcheck', 'clang','gcc'],
" \   'python': ['pylint'],
" \}
" let g:ale_completion_delay = 500
" let g:ale_echo_delay = 20
" let g:ale_lint_delay = 500
" let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_lint_on_insert_leave = 1
" let g:airline#extensions#ale#enabled = 1
" let g:ale_sign_error = ">>"
" let g:ale_sign_warning = "--"

" 指定gcc选项
" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
" 指定cppcheck选项
" let g:ale_c_cppcheck_options = '-I arch/arm/include/'
" let g:ale_cpp_cppcheck_options = ''
" }}}

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
" }}}
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

" {{{ hightlight indent level
" 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_enable_on_vim_startup = 1
" hi IndentGuidesOdd  ctermbg=237
" hi IndentGuidesEven ctermbg=238
" }}}

" {{{ ack use ag replace inside grep
"  fast grep  use ag
" Plug 'mileszs/ack.vim'
" Which has the same effect but will report every match on the line.
" let g:ackprg = 'ag --vimgrep'
" if executable('ag')
"     let grepprg='ag\ --vimgrep\ $* set grepformat=%f:%l:%c:%m' " use ag replace the vimgrep
"     " let g:ackprg = 'ag --vimgrep' " use ag replace ack
"     let g:ackprg = 'ag --nogroup --nocolor --column'
"     let g:ackhighlight = 1  " highlight the search result
"     " let g:ack_autoclose = 1 " close quickfix
"     let g:ackpreview = 1  " automagically open the file
"     nnoremap <silent> <F3> :Ack <cword><CR>
" endif
"
" {{{ session files
" Plug 'tpope/vim-obsession'
" }}}
