source $HOME/.config/nvim/themes/airline.vim
autocmd ColorScheme * highlight Normal ctermbg=NONE 
autocmd ColorScheme * highlight NonText ctermbg=NONE
autocmd ColorScheme * highlight LineNr ctermbg=NONE 
autocmd ColorScheme * highlight SignColumn ctermbg=NONE
autocmd ColorScheme * highlight Comment ctermfg=9
"autocmd TextChanged,TextChangedI * if &readonly == 0 && filereadable(bufname('%')) | silent write | endif

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
if has('nvim')
	  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
	  Plug 'Shougo/denite.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
endif
"Plug 'norcalli/nvim-colorizer.lua'
Plug 'freeo/vim-kalisi'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'frazrepo/vim-rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' 
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'puremourning/vimspector' "Debugger
Plug 'szw/vim-maximizer' "Zoom (like tmux zoom)
Plug 'tpope/vim-fugitive' "Git wrapper
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
"Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme kalisi
set background=dark
set number
set relativenumber
set mouse=a
set inccommand=split
set completeopt=noinsert,menuone,noselect
set signcolumn=auto
set scrolloff=10
set linebreak
hi CursorLine ctermbg=NONE cterm=underline
hi CursorColumn ctermbg=NONE cterm=underline

nnoremap <SPACE> <Nop>
let mapleader="\<space>"
nnoremap <leader>b ^
nnoremap <leader>. A.<ESC>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>qq :q!<CR>
"Create new file (place filename after /)
nnoremap <leader>n :e %:h/
nnoremap <leader><leader> i<space><right><ESC>
"Replace by yanked
nnoremap <leader>piw ciw<C-r>0<ESC>
nnoremap <leader>pw cw<C-r>0<ESC>
nnoremap <leader>pi" ci"<C-r>0<ESC>
nnoremap <leader>pi' ci'<C-r>0<ESC>
nnoremap <leader>pi( ci(<C-r>0<ESC>
nnoremap <leader>pi[ ci[<C-r>0<ESC>
nnoremap <leader>pi{ ci{<C-r>0<ESC>
nnoremap <leader>pi< ci<<C-r>0<ESC>
nnoremap <leader>pit cit<C-r>0<ESC>
"Visual block
nnoremap <leader>v <C-v>
nnoremap <leader>r <C-r>
"Toggle file maximization while on split screen
nnoremap <leader>z :MaximizerToggle<CR>
nnoremap 9 %
nnoremap <leader>hh :set cursorline! cursorcolumn!<CR>
inoremap jj <ESC>
vnoremap <leader> <ESC>
nmap <leader>e :NERDTreeToggle<CR>
vmap <leader>y "+y
vmap <leader>3 <plug>NERDCommenterToggle
nmap <leader>3 <plug>NERDCommenterToggle
"Git status
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
map Y y$
map çç $
map <A-h> 3h
map <A-j> 3j
map <A-k> 3k
map <A-l> 3l

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'dark'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:powerline_pycmd="py3"
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
