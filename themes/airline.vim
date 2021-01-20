" Enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
let g:powerline_pycmd="py3"

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Switch to your current theme
let g:airline_theme = 'base16'

" Always show tabs
set showtabline=2
set laststatus=2
set noshowmode

"hi airline_c ctermbg=NONE
"hi airline_tabfill ctermbg=NONE
