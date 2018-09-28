" auto source all *.vim under path 
" source order will follow the filename order
" e.g. source 00.xx.vim first then 01.xx.vim
for file in split(glob('~/.config/nvim/config/[0-9][0-9]*.vim'),'\n')
	exe 'source' file
endfor
" manually source *.vim under path
" source ~/.config/nvim/essential.vim
" source ~/.config/nvim/config/00.normal.vim
" source ~/.config/nvim/config/01.plugins.vim
" source ~/.config/nvim/config/10.plugins.init.vim
" source ~/.config/nvim/config/11.deoplete.vim
" source ~/.config/nvim/config/21.keymap.vim
