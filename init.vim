source $HOME/.config/nvim/themes/airline.vim
call plug#begin('~/.vim/plugged')
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE

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
Plug 'Xuyuanp/dtree-git-plugin'
"Plug 'tiagofuvim-nerdtree-syntax-highlight'
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
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
"Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme kalisi
set background=light
set number
set relativenumber
set mouse=a
set inccommand=split
set completeopt=noinsert,menuone,noselect

nnoremap <SPACE> <Nop>
nnoremap ç $
nnoremap <M-b> ^
let mapleader="\<space>"
map <leader>q :q<CR>
map <leader>w :w<CR>
map <leader>wq :wq<CR>
map <leader>qq :q!<CR>
inoremap kj <ESC>
nmap § :NERDTreeToggle<CR>
vmap <leader>3 <plug>NERDCommenterToggle
nmap <leader>3 <plug>NERDCommenterToggle

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
