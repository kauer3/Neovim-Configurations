call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
if has('nvim')
	  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
	  Plug 'Shougo/denite.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' 
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
"Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox

set background=dark
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set completeopt=noinsert,menuone,noselect

let mapleader="\<space>"

inoremap kj <ESC>
nmap <C-e> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
