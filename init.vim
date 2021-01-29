source $HOME/.config/nvim/themes/airline.vim

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'freeo/vim-kalisi'
Plug '~/WSL/GitHub/paste-replace'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'frazrepo/vim-rainbow'
"Plug 'jbgutierrez/vim-better-comments'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
"Expand i(nside) and a(rround) functionalities
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
"Check commenter by tpope
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Debugger
Plug 'puremourning/vimspector'
"Zoom (like tmux zoom)
Plug 'szw/vim-maximizer'
"Git wrapper
Plug 'tpope/vim-fugitive'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
"Plug 'junegunn/fzf.vim'
call plug#end()

autocmd ColorScheme * highlight Normal ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight NonText ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight LineNr ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight String ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight SignColumn ctermbg=NONE
"autocmd ColorScheme * highlight TabLineSel ctermbg=NONE ctermfg=88
"autocmd ColorScheme * highlight TabLineFill ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight Statement ctermbg=NONE
autocmd ColorScheme * highlight Todo ctermbg=NONE
autocmd ColorScheme * highlight Underlined ctermbg=NONE
autocmd ColorScheme * highlight ErrorMsg ctermbg=NONE ctermfg=124
autocmd ColorScheme * highlight MatchParen ctermbg=5
autocmd ColorScheme * highlight CursorLineNr ctermbg=NONE
autocmd ColorScheme * highlight Search ctermfg=2 ctermbg=10
autocmd ColorScheme * highlight Visual ctermbg=NONE
autocmd ColorScheme * highlight Comment ctermfg=237
autocmd ColorScheme * highlight GruvboxPurple ctermfg=130
autocmd ColorScheme * highlight GruvboxRedBold ctermfg=88 ctermbg=226
autocmd ColorScheme * highlight GruvboxBlue ctermfg=148
autocmd ColorScheme * highlight GruvboxYellow ctermfg=23
autocmd ColorScheme * highlight GruvboxOrange ctermfg=130
autocmd ColorScheme * highlight GruvboxAqua ctermbg=NONE ctermfg=35
airline_x_inactive xxx ctermfg=249 ctermbg=238
airline_x_inactive_bold xxx cterm=bold ctermfg=249 ctermbg=238
airline_x_inactive_red xxx ctermfg=160 ctermbg=238
"autocmd ColorScheme * highlight airline_tablabel_right ctermfg=88

"airline_tablabel	airline_tablabelh
"airline_tab	airline_tab
"airline_tabsel	airline_tabsel
"airline_tabtype	airline_tabtype
"airline_tabmod	airline_tabmod
"airline_tabmod_unsel	airline_tabmod_unsel
"airline_tabhid	airline_tabhid
"airline_tablabel_right	airline_tablabel_right
"airline_tab_right	airline_tab_right
"airline_tabsel_right	airline_tabsel_right
"airline_tabmod_right	airline_tabmod_right

colorscheme gruvbox

set nocompatible
set backspace=indent,eol,start
set background=dark
set number
set relativenumber
set mouse=a
set showcmd
set incsearch
set inccommand=split
set completeopt=noinsert,menuone,noselect
set signcolumn=auto
set scrolloff=7
set linebreak
syntax on
"set listchars=['|', '¦', '┆', '┊']
"set list
"set statusline=%{FugitiveStatusline()}
hi CursorLine ctermbg=NONE cterm=underline
hi CursorColumn ctermbg=NONE cterm=underline
hi airline_c ctermbg=NONE
hi airline_c ctermfg=88
hi airline_tabfill ctermbg=NONE
"autocmd ColorScheme * highlight airline_tab-right ctermbg=88
"autocmd ColorScheme * highlight airline_b_inactive ctermbg=NONE
"autocmd ColorScheme * highlight airline_c_inactive ctermbg=NONE
"autocmd ColorScheme * highlight airline_z_inactive ctermbg=NONE
"autocmd ColorScheme * highlight airline_b ctermbg=NONE
"autocmd ColorScheme * highlight airline_b ctermfg=124
"autocmd ColorScheme * highlight airline_x_inactive ctermfg=88
"autocmd ColorScheme * highlight airline_tablabel ctermbg=NONE
"autocmd ColorScheme * highlight airline_tablabel ctermfg=214
"autocmd ColorScheme * highlight StatusLineNC ctermfg=211
"autocmd ColorScheme * highlight StatusLineNC ctermfg=211
"autocmd ColorScheme * highlight airline_warning ctermbg=211

nnoremap <SPACE> <Nop>
let mapleader="\<space>"
map <TAB> >>
map <S-TAB> <<
map § gt
map ª gT
map <leader>nt :tabnew<CR>
map <leader>ct :tabclose<CR>
imap <S-TAB> <C-d>
nnoremap <leader>b ^
nnoremap <A-b> S<ESC>
nnoremap <expr> <A-ç> "mpA" . (nr2char(getchar())) . "<ESC>`p"
inoremap <expr> <A-ç> "<C-o>mp<C-o>A" . (nr2char(getchar())) . "<C-o>`p"
nnoremap <leader>ç ZZ

"nnoremap <leader>q :q<CR>
"nnoremap <leader>wq :wq<CR> "Not needed, ZZ does the same, but saving only when necessary
nnoremap <leader>w :w<CR>
nnoremap <leader>qq :q!<CR>

"Create new file (place filename after /)
nnoremap <leader>n :e %:h/

nnoremap <leader><leader> i<space><right><ESC>
"inoremap <A-h> :<C-U>exe v:count1 <C-o>h<CR>
"inoremap <silent> <A-h> :<C-u>call <ESC>hi, repeat([""], v:count1)<CR>
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>



"Todo - d(elete), c(hange), p(aste) or y(ank) <(before) or >(after) ,(comma)
"(or any other character really, if I managed to use variables in mapping
"functions)


"Replace by yanked
"nmap <leader>pw cw<C-r>0<ESC>
"nmap <leader>piw ciw<C-r>0<ESC>
"nmap <leader>pW cW<C-r>0<ESC>
"nmap <leader>piW ciW<C-r>0<ESC>
"nmap <leader>pi" ci"<C-r>0<ESC>
"nmap <leader>pi' ci'<C-r>0<ESC>
"nmap <leader>pi( ci(<C-r>0<ESC>
"nmap <leader>pi[ ci[<C-r>0<ESC>
"nmap <leader>pi{ ci{<C-r>0<ESC>
"nmap <leader>pi< ci<<C-r>0<ESC>
"nmap <leader>pit cit<C-r>0<ESC>
"nmap <leader>paw caw<C-r>0<ESC>
"nmap <leader>paW caW<C-r>0<ESC>
"nmap <leader>pa" ca"<C-r>0<ESC>
"nmap <leader>pa' ca'<C-r>0<ESC>
"nmap <leader>pa( ca(<C-r>0<ESC>
"nmap <leader>pa[ ca[<C-r>0<ESC>
"nmap <leader>pa{ ca{<C-r>0<ESC>
"nmap <leader>pa< ca<<C-r>0<ESC>
"nmap <leader>pat cat<C-r>0<ESC>

"Normal mode commands while holding Alt in insert mode

inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>a
inoremap <A-w> <C-o>w
inoremap <A-e> <C-o>e<C-o>l
inoremap <A-b> <C-o>b
inoremap <A-B> <C-o>B
inoremap <A-W> <C-o>W
inoremap <A-x> <C-o>x
inoremap <A-X> <C-o>X

"inoremap <A-h> <ESC>hi
"inoremap <A-h> <ESC>hi

"inoremap <expr> \ "<C-o>" . nr2char(getchar())

"Visual block
nnoremap <leader>v <C-v>

nnoremap <A-r> <C-r>
nnoremap <A-o> <C-o>
nnoremap <A-x> ldlh
nnoremap 1p "0p
nnoremap <A-p> "*p
inoremap <A-p> <C-r>*
inoremap <C-v> <C-r>0

"Toggle file maximization while on split screen
nnoremap <leader>z :MaximizerToggle<CR>
nnoremap 99 %
nnoremap <leader>hh :set cursorline! cursorcolumn!<CR>
inoremap jj <ESC>
vnoremap <leader> <ESC>
nmap <A-e> :NERDTreeToggle<CR>
vmap <leader>y "+y
vmap <leader>3 <plug>NERDCommenterToggle
nmap <leader>3 <plug>NERDCommenterToggle
"Git status
nmap <leader>gs :Git<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>ga :Git add
nmap <leader>g. :Git add .<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
map Y y$
map ç $
nmap <A-h> 3h
nmap <A-j> 3j
nmap <A-k> 3k
nmap <A-l> 3l

let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
