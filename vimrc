color elflord
set number
syntax on
filetype plugin indent on

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
"let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
"let g:go_highlight_build_constraints = 1
let g:go_highlight_format_strings = 1

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" automatically try autocomplete when '.' is pressed
" au filetype go inoremap <buffer> . .<C-x><C-o>

call plug#begin()
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" convert tabs to spaces
set expandtab
set tabstop=2
set shiftwidth=2

" autoclose certain characters
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
