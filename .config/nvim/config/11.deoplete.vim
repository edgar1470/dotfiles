" Use deoplete.
 let g:deoplete#enable_at_startup = 1
 let g:deoplete#enable_smart_case = 1
 " let g:clang_library_path='/usr/local/opt/llvm/lib'
 "let g:clang_library_path='/usr/lib/llvm-3.5/lib'
 let g:clang_library_path='/usr/lib/llvm-4.0/lib'
 let g:clang_complete_auto = 1
 let g:clang_auto_select = 1
 let g:clang_omnicppcomplete_compliance = 0
 let g:clang_make_default_keymappings = 0
 " let g:clang_use_library = 1
"
"
" Use deoplete-clangx
 call deoplete#custom#var('clangx', 'clang_binary', '/usr/bin/clang')
 call deoplete#custom#var('clangx', 'default_c_options', '')
 call deoplete#custom#var('clangx', 'default_cpp_options', '')
" .clang or .clang_complete file used to configure compiler options
"  -DDEBUG
"  -include ../config.h
"  -I../common
"  -I/usr/include/c++/6/
" -I/usr/include
