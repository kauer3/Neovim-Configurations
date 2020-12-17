source $HOME/.config/nvim/themes/airline.vim
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
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
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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

colorscheme "nocturne

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set completeopt=noinsert,menuone,noselect

let mapleader="\<space>"

inoremap kj <ESC>
nmap § :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
