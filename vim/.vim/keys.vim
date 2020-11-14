" insert unicode
" in insert mode Ctrl+v follwed by
"  a decimal number (0-255)
"  o then an octal number (o0-o377) (0-255)
"  x then an hex number (x0-xFF) (0-255)
"  u then a 4-hexchar unicode sequence
"  U then a 8-hexchar unicode sequence
" ┌───────┬───────┬────────┬─────┐
" │ UBOOT │ kernel│ rootfs │ app │
" └───────┴───────┴────────┴─────┘

" ┌  ─  ┐ ┬ ┐ └ ┴ ┘ │
"
" Char  Dec     Hex     Entity  Name
" ─     9472    2500            BOX DRAWINGS LIGHT HORIZONTAL
" ━     9473    2501            BOX DRAWINGS HEAVY HORIZONTAL
" │     9474    2502            BOX DRAWINGS LIGHT VERTICAL
" ┃     9475    2503            BOX DRAWINGS HEAVY VERTICAL
" ┄     9476    2504            BOX DRAWINGS LIGHT TRIPLE DASH HORIZONTAL
" ┅     9477    2505            BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL
" ┆     9478    2506            BOX DRAWINGS LIGHT TRIPLE DASH VERTICAL
" ┇     9479    2507            BOX DRAWINGS HEAVY TRIPLE DASH VERTICAL
" ┈     9480    2508            BOX DRAWINGS LIGHT QUADRUPLE DASH HORIZONTAL
" ┉     9481    2509            BOX DRAWINGS HEAVY QUADRUPLE DASH HORIZONTAL
" ┊     9482    250A            BOX DRAWINGS LIGHT QUADRUPLE DASH VERTICAL
" ┋     9483    250B            BOX DRAWINGS HEAVY QUADRUPLE DASH VERTICAL
" ┌     9484    250C            BOX DRAWINGS LIGHT DOWN AND RIGHT
" ┍     9485    250D            BOX DRAWINGS DOWN LIGHT AND RIGHT HEAVY
" ┎     9486    250E            BOX DRAWINGS DOWN HEAVY AND RIGHT LIGHT
" ┏     9487    250F            BOX DRAWINGS HEAVY DOWN AND RIGHT
" ┐     9488    2510            BOX DRAWINGS LIGHT DOWN AND LEFT
" ┑     9489    2511            BOX DRAWINGS DOWN LIGHT AND LEFT HEAVY
" ┒     9490    2512            BOX DRAWINGS DOWN HEAVY AND LEFT LIGHT
" ┓     9491    2513            BOX DRAWINGS HEAVY DOWN AND LEFT
" └     9492    2514            BOX DRAWINGS LIGHT UP AND RIGHT
" ┕     9493    2515            BOX DRAWINGS UP LIGHT AND RIGHT HEAVY
" ┖     9494    2516            BOX DRAWINGS UP HEAVY AND RIGHT LIGHT
" ┗     9495    2517            BOX DRAWINGS HEAVY UP AND RIGHT
" ┘     9496    2518            BOX DRAWINGS LIGHT UP AND LEFT
" ┙     9497    2519            BOX DRAWINGS UP LIGHT AND LEFT HEAVY
" ┚     9498    251A            BOX DRAWINGS UP HEAVY AND LEFT LIGHT
" ┛     9499    251B            BOX DRAWINGS HEAVY UP AND LEFT
" ├     9500    251C            BOX DRAWINGS LIGHT VERTICAL AND RIGHT
" ┝     9501    251D            BOX DRAWINGS VERTICAL LIGHT AND RIGHT HEAVY
" ┞     9502    251E            BOX DRAWINGS UP HEAVY AND RIGHT DOWN LIGHT
" ┟     9503    251F            BOX DRAWINGS DOWN HEAVY AND RIGHT UP LIGHT
" ┠     9504    2520            BOX DRAWINGS VERTICAL HEAVY AND RIGHT LIGHT
" ┡     9505    2521            BOX DRAWINGS DOWN LIGHT AND RIGHT UP HEAVY
" ┢     9506    2522            BOX DRAWINGS UP LIGHT AND RIGHT DOWN HEAVY
" ┣     9507    2523            BOX DRAWINGS HEAVY VERTICAL AND RIGHT
" ┤     9508    2524            BOX DRAWINGS LIGHT VERTICAL AND LEFT
" ┥     9509    2525            BOX DRAWINGS VERTICAL LIGHT AND LEFT HEAVY
" ┦     9510    2526            BOX DRAWINGS UP HEAVY AND LEFT DOWN LIGHT
" ┧     9511    2527            BOX DRAWINGS DOWN HEAVY AND LEFT UP LIGHT
" ┨     9512    2528            BOX DRAWINGS VERTICAL HEAVY AND LEFT LIGHT
" ┩     9513    2529            BOX DRAWINGS DOWN LIGHT AND LEFT UP HEAVY
" ┪     9514    252A            BOX DRAWINGS UP LIGHT AND LEFT DOWN HEAVY
" ┫     9515    252B            BOX DRAWINGS HEAVY VERTICAL AND LEFT
" ┬     9516    252C            BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
" ┭     9517    252D            BOX DRAWINGS LEFT HEAVY AND RIGHT DOWN LIGHT
" ┮     9518    252E            BOX DRAWINGS RIGHT HEAVY AND LEFT DOWN LIGHT
" ┯     9519    252F            BOX DRAWINGS DOWN LIGHT AND HORIZONTAL HEAVY
" ┰     9520    2530            BOX DRAWINGS DOWN HEAVY AND HORIZONTAL LIGHT
" ┱     9521    2531            BOX DRAWINGS RIGHT LIGHT AND LEFT DOWN HEAVY
" ┲     9522    2532            BOX DRAWINGS LEFT LIGHT AND RIGHT DOWN HEAVY
" ┳     9523    2533            BOX DRAWINGS HEAVY DOWN AND HORIZONTAL
" ┴     9524    2534            BOX DRAWINGS LIGHT UP AND HORIZONTAL
" ┵     9525    2535            BOX DRAWINGS LEFT HEAVY AND RIGHT UP LIGHT
" ┶     9526    2536            BOX DRAWINGS RIGHT HEAVY AND LEFT UP LIGHT
" ┷     9527    2537            BOX DRAWINGS UP LIGHT AND HORIZONTAL HEAVY
" ┸     9528    2538            BOX DRAWINGS UP HEAVY AND HORIZONTAL LIGHT
" ┹     9529    2539            BOX DRAWINGS RIGHT LIGHT AND LEFT UP HEAVY
" ┺     9530    253A            BOX DRAWINGS LEFT LIGHT AND RIGHT UP HEAVY
" ┻     9531    253B            BOX DRAWINGS HEAVY UP AND HORIZONTAL
" ┼     9532    253C            BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
" ┽     9533    253D            BOX DRAWINGS LEFT HEAVY AND RIGHT VERTICAL LIGHT
" ┾     9534    253E            BOX DRAWINGS RIGHT HEAVY AND LEFT VERTICAL LIGHT
" ┿     9535    253F            BOX DRAWINGS VERTICAL LIGHT AND HORIZONTAL HEAVY
" ╀     9536    2540            BOX DRAWINGS UP HEAVY AND DOWN HORIZONTAL LIGHT
" ╁     9537    2541            BOX DRAWINGS DOWN HEAVY AND UP HORIZONTAL LIGHT
" ╂     9538    2542            BOX DRAWINGS VERTICAL HEAVY AND HORIZONTAL LIGHT
" ╃     9539    2543            BOX DRAWINGS LEFT UP HEAVY AND RIGHT DOWN LIGHT
" ╄     9540    2544            BOX DRAWINGS RIGHT UP HEAVY AND LEFT DOWN LIGHT
" ╅     9541    2545            BOX DRAWINGS LEFT DOWN HEAVY AND RIGHT UP LIGHT
" ╆     9542    2546            BOX DRAWINGS RIGHT DOWN HEAVY AND LEFT UP LIGHT
" ╇     9543    2547            BOX DRAWINGS DOWN LIGHT AND UP HORIZONTAL HEAVY
" ╈     9544    2548            BOX DRAWINGS UP LIGHT AND DOWN HORIZONTAL HEAVY
" ╉     9545    2549            BOX DRAWINGS RIGHT LIGHT AND LEFT VERTICAL HEAVY
" ╊     9546    254A            BOX DRAWINGS LEFT LIGHT AND RIGHT VERTICAL HEAVY
" ╋     9547    254B            BOX DRAWINGS HEAVY VERTICAL AND HORIZONTAL
" ╌     9548    254C            BOX DRAWINGS LIGHT DOUBLE DASH HORIZONTAL
" ╍     9549    254D            BOX DRAWINGS HEAVY DOUBLE DASH HORIZONTAL
" ╎     9550    254E            BOX DRAWINGS LIGHT DOUBLE DASH VERTICAL
" ╏     9551    254F            BOX DRAWINGS HEAVY DOUBLE DASH VERTICAL
" ═     9552    2550            BOX DRAWINGS DOUBLE HORIZONTAL
" ║     9553    2551            BOX DRAWINGS DOUBLE VERTICAL
" ╒     9554    2552            BOX DRAWINGS DOWN SINGLE AND RIGHT DOUBLE
" ╓     9555    2553            BOX DRAWINGS DOWN DOUBLE AND RIGHT SINGLE
" ╔     9556    2554            BOX DRAWINGS DOUBLE DOWN AND RIGHT
" ╕     9557    2555            BOX DRAWINGS DOWN SINGLE AND LEFT DOUBLE
" ╖     9558    2556            BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE
" ╗     9559    2557            BOX DRAWINGS DOUBLE DOWN AND LEFT
" ╘     9560    2558            BOX DRAWINGS UP SINGLE AND RIGHT DOUBLE
" ╙     9561    2559            BOX DRAWINGS UP DOUBLE AND RIGHT SINGLE
" ╚     9562    255A            BOX DRAWINGS DOUBLE UP AND RIGHT
" ╛     9563    255B            BOX DRAWINGS UP SINGLE AND LEFT DOUBLE
" ╜     9564    255C            BOX DRAWINGS UP DOUBLE AND LEFT SINGLE
" ╝     9565    255D            BOX DRAWINGS DOUBLE UP AND LEFT
" ╞     9566    255E            BOX DRAWINGS VERTICAL SINGLE AND RIGHT DOUBLE
" ╟     9567    255F            BOX DRAWINGS VERTICAL DOUBLE AND RIGHT SINGLE
" ╠     9568    2560            BOX DRAWINGS DOUBLE VERTICAL AND RIGHT
" ╡     9569    2561            BOX DRAWINGS VERTICAL SINGLE AND LEFT DOUBLE
" ╢     9570    2562            BOX DRAWINGS VERTICAL DOUBLE AND LEFT SINGLE
" ╣     9571    2563            BOX DRAWINGS DOUBLE VERTICAL AND LEFT
" ╤     9572    2564            BOX DRAWINGS DOWN SINGLE AND HORIZONTAL DOUBLE
" ╥     9573    2565            BOX DRAWINGS DOWN DOUBLE AND HORIZONTAL SINGLE
" ╦     9574    2566            BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL
" ╧     9575    2567            BOX DRAWINGS UP SINGLE AND HORIZONTAL DOUBLE
" ╨     9576    2568            BOX DRAWINGS UP DOUBLE AND HORIZONTAL SINGLE
" ╩     9577    2569            BOX DRAWINGS DOUBLE UP AND HORIZONTAL
" ╪     9578    256A            BOX DRAWINGS VERTICAL SINGLE AND HORIZONTAL DOUBLE
" ╫     9579    256B            BOX DRAWINGS VERTICAL DOUBLE AND HORIZONTAL SINGLE
" ╬     9580    256C            BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL
" ╭     9581    256D            BOX DRAWINGS LIGHT ARC DOWN AND RIGHT
" ╮     9582    256E            BOX DRAWINGS LIGHT ARC DOWN AND LEFT
" ╯     9583    256F            BOX DRAWINGS LIGHT ARC UP AND LEFT
" ╰     9584    2570            BOX DRAWINGS LIGHT ARC UP AND RIGHT
" ╱     9585    2571            BOX DRAWINGS LIGHT DIAGONAL UPPER RIGHT TO LOWER LEFT
" ╲     9586    2572            BOX DRAWINGS LIGHT DIAGONAL UPPER LEFT TO LOWER RIGHT
" ╳     9587    2573            BOX DRAWINGS LIGHT DIAGONAL CROSS
" ╴     9588    2574            BOX DRAWINGS LIGHT LEFT
" ╵     9589    2575            BOX DRAWINGS LIGHT UP
" ╶     9590    2576            BOX DRAWINGS LIGHT RIGHT
" ╷     9591    2577            BOX DRAWINGS LIGHT DOWN
" ╸     9592    2578            BOX DRAWINGS HEAVY LEFT
" ╹     9593    2579            BOX DRAWINGS HEAVY UP
" ╺     9594    257A            BOX DRAWINGS HEAVY RIGHT
" ╻     9595    257B            BOX DRAWINGS HEAVY DOWN
" ╼     9596    257C            BOX DRAWINGS LIGHT LEFT AND HEAVY RIGHT
" ╽     9597    257D            BOX DRAWINGS LIGHT UP AND HEAVY DOWN
" ╾     9598    257E            BOX DRAWINGS HEAVY LEFT AND LIGHT RIGHT
" ╿     9599    257F            BOX DRAWINGS HEAVY UP AND LIGHT DOWN

" yank form the cursor to the end of line
nnoremap Y y$

" allow easy navigation between wrapped lines.
vmap j gj
vmap k gk
nmap j gj
nmap k gk

nnoremap <Leader>x :<C-U>call StripTrailingWhitespace()<CR>

" search word under cursor, the pattern is treated as regex, and enter normal mode directly
noremap <leader>fc :<C-U><C-R>=printf("Leaderf! rg -w -e %s ", expand("<cword>"))<CR>
" search word under cursor, the pattern is treated as regex,
" append the result to previous search results.
noremap <leader>fa :<C-U><C-R>=printf("Leaderf! rg --append -e %s ", expand("<cword>"))<CR>
" search visually selected text literally, don't quit LeaderF after accepting an entry
xnoremap <leader>fv :<C-U><C-R>=printf("Leaderf! rg -F --stayOpen -e %s ", leaderf#Rg#visual())<CR>
" recall last search. If the result window is closed, reopen it.
noremap <leader>fo :<C-U>Leaderf! rg --stayOpen --recall<CR>
let g:Lf_ShortcutF = '<leader>ff'

" Cycle through argument list
nnoremap [a :previous<CR>
nnoremap ]a :next<CR>
" Cycle through buffers
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
" Cycle through quicklist/:helpgrep items
nnoremap [c :cprevious<CR>
nnoremap ]c :cnext<CR>
" Cycle through location list items
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>

" \d inserts the local date (POSIX date)
nnoremap <Bslash>d :read !date<CR>
" \D inserts the UTC date (POSIX date)
nnoremap <Bslash>D :read !date -u<CR>

imap <F3> <C-R>=strftime("%Y-%m-%d %T")<CR>
" za/az toggle folds
" Makes it easier to open/close folds.
nmap az za

" Save files with root privileges.
cmap w!! w !sudo tee % >/dev/null

nnoremap <F2> :AsyncRun
