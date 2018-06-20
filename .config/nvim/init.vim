for file in split(glob('~/.config/nvim/config/[0-9][0-9]*.vim'),'\n')
        exe 'source' file
endfor
