color elflord
set number
syntax on

" convert tabs to spaces
set expandtab
set tabstop=2
set shiftwidth=2

" autoclose certain characters
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
