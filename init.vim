source $HOME/.config/nvim/themes/airline.vim

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'freeo/vim-kalisi'
Plug '~/WSL/GitHub/paste-replace'
Plug 'morhetz/gruvbox'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'scrooloose/nerdtree'
"Plug 'vim-syntastic/syntastic'
" Plug 'frazrepo/vim-rainbow'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
"Expand i(nside) and a(rround) functionalities
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'christoomey/vim-tmux-navigator'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
"Color Picker
" Plug 'abijr/colorpicker'
"Debugger
" Plug 'puremourning/vimspector'
"Emmet/completion
Plug 'mattn/emmet-vim'
"Live preview
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"Zoom (like tmux zoom)
Plug 'szw/vim-maximizer'
"Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
call plug#end()

autocmd VimEnter * GitGutterSignsDisable
autocmd VimEnter * GitGutterLineNrHighlightsEnable
autocmd VimEnter * highlight GitGutterAddLineNr ctermfg=23
autocmd VimEnter * highlight GitGutterChangeLineNr ctermfg=23
autocmd VimEnter * highlight GitGutterDeleteLineNr ctermfg=23
autocmd VimEnter * highlight GitGutterChangeDeleteLine ctermfg=23
autocmd ColorScheme * highlight Normal ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight Operator ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight NvimOperator ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight htmlTagName ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight htmlTag ctermbg=NONE ctermfg=88
" autocmd ColorScheme * highlight htmlHead ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight htmlArg ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight htmlEndTag ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight htmlString ctermbg=NONE ctermfg=65
" autocmd ColorScheme * highlight htmlTagN ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight cssDefinition ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight cssBraces ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight cssIdentifier ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight cssTagName ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight cssUnitDecorators ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight jsFunction ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight jsFuncBlock ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight jsFuncBraces ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight jsBrackets ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight jsNoise ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight jsDot ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight jsGlobalObjects ctermbg=NONE ctermfg=166
autocmd ColorScheme * highlight jsObjectProp ctermbg=NONE ctermfg=166
autocmd ColorScheme * highlight NonText ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight LineNr ctermbg=NONE  ctermfg=88
autocmd ColorScheme * highlight String ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight SignColumn ctermbg=NONE
autocmd ColorScheme * highlight Statement ctermbg=NONE
autocmd ColorScheme * highlight Todo ctermbg=NONE
autocmd ColorScheme * highlight Underlined ctermbg=NONE ctermfg=58
autocmd ColorScheme * highlight ErrorMsg ctermbg=NONE ctermfg=124
autocmd ColorScheme * highlight MatchParen ctermbg=5
autocmd ColorScheme * highlight CursorLineNr ctermbg=NONE
autocmd ColorScheme * highlight Search ctermfg=2 ctermbg=10
autocmd ColorScheme * highlight Visual ctermbg=NONE
autocmd ColorScheme * highlight Comment ctermfg=237
autocmd ColorScheme * highlight PmenuSel ctermfg=88
autocmd ColorScheme * highlight GruvboxPurple ctermfg=166
autocmd ColorScheme * highlight GruvboxRedBold ctermfg=88 ctermbg=226
autocmd ColorScheme * highlight GruvboxRed ctermfg=23
autocmd ColorScheme * highlight GruvboxBlue ctermfg=23
autocmd ColorScheme * highlight GruvboxGreen ctermfg=23
autocmd ColorScheme * highlight GruvboxGreenBold ctermfg=29
autocmd ColorScheme * highlight GruvboxYellow ctermfg=58
autocmd ColorScheme * highlight GruvboxOrange ctermfg=23
autocmd ColorScheme * highlight GruvboxAqua ctermbg=NONE ctermfg=166
autocmd ColorScheme * highlight GruvboxAquaBold ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight GruvboxFg3 ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight GruvboxFg1 ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight Todo ctermbg=NONE ctermfg=197
autocmd ColorScheme * highlight op_lv0 ctermfg=88
autocmd ColorScheme * highlight op_lv1 ctermfg=190
autocmd ColorScheme * highlight op_lv2 ctermfg=165
autocmd ColorScheme * highlight op_lv3 ctermfg=35
autocmd ColorScheme * highlight op_lv4 ctermfg=19
autocmd ColorScheme * highlight op_lv5 ctermfg=9
autocmd ColorScheme * highlight lv5c ctermfg=108
autocmd ColorScheme * highlight lv4c ctermfg=9
autocmd ColorScheme * highlight lv3c ctermfg=190
autocmd ColorScheme * highlight lv2c ctermfg=19
autocmd ColorScheme * highlight lv1c ctermfg=165
autocmd ColorScheme * highlight StartifyFile ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight NERDTreeFlags ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight NERDTreeCWD ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight NERDTreeDir ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight NERDTreeDirSlash ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight CocInfoFloat ctermbg=233 ctermfg=88
autocmd ColorScheme * highlight CocErrorFloat ctermbg=233 ctermfg=88
autocmd ColorScheme * highlight CocWarningFloat ctermbg=233 ctermfg=88
autocmd ColorScheme * highlight CocHintFloat ctermbg=233 ctermfg=88
hi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=NONE ctermfg=88
hi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=NONE ctermfg=88

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
set scrolloff=5
set linebreak
set nowrap
set hidden
set tw=0
set wm=0
syntax on
set statusline=%{FugitiveStatusline()}
hi CursorLine ctermbg=NONE cterm=underline
hi CursorColumn ctermbg=NONE cterm=underline
hi airline_c ctermbg=NONE
hi airline_c ctermfg=88
hi airline_tabfill ctermbg=NONE

function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nnoremap <SPACE> <Nop>
let mapleader="\<space>"
noremap <M-b> <C-o>
noremap <M-a> <C-i>
map <TAB> >>
map <S-TAB> <<
imap <S-TAB> <C-d>

" Tabs and buffers
map <M-2> :bn<CR>
map <M-1> :bp<CR>
map <leader>cb :bd<CR>
map <leader>nt :tabnew<CR>
map <leader>ct :tabclose<CR>

" Commenter
map <leader>3 gcc

" FZF
" map <leader>f :Files<CR>
map <C-f> :BLines<CR>

" Startify
map <silent> <M-s> :Startify<CR>

" Floaterm
map <leader>t :FloatermNew<CR>

" Easymotion
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
" Find overwindow (biderectional)
nmap f <Plug>(easymotion-overwin-f)
nmap <Leader>w <Plug>(easymotion-overwin-w)
nnoremap <leader>b ^
nnoremap <M-i> 3<C-y>
nnoremap <M-u> 3<C-e>
nnoremap <M-y> 3zh
nnoremap <M-o> 3zl
" nnoremap <M-,> H3<C-y>
" nnoremap <M-m> L3<C-e>
" nnoremap <M-n> 3zh
" nnoremap <M-.> 3zl
nnoremap <Up> <C-u>
nnoremap <Down> <C-d>
" nnoremap <Up> <C-b>
" nnoremap <Up> <C-f>
" nnoremap Â¬ç zL
" nnoremap Â¬g zR

" TODO Fix next lines
inoremap <M-i> <C-o>3<C-y>
inoremap <M-u> <C-o>3<C-e>
inoremap <M-y> <C-o>3zh
inoremap <M-o> <C-o>3zl
inoremap <Up> <C-o><C-u>
inoremap <Down> <C-o><C-d>
" inoremap Â¬b <C-o><C-b>
" inoremap Â¬f <C-o><C-f>
" inoremap Â¬L <C-o>zL
" inoremap Â¬R <C-o>zR
" Find another keybinding for this
" nnoremap <A-b> S<ESC>
nnoremap <expr> <A-ç> "mpA" . (nr2char(getchar())) . "<ESC>`p"
inoremap <expr> <A-ç> "<C-o>mp<C-o>A" . (nr2char(getchar())) . "<C-o>`p"
nnoremap <leader>ç ZZ

"nnoremap <leader>q :q<CR>
"nnoremap <leader>wq :wq<CR> "Not needed, ZZ does the same, but saving only when necessary
nnoremap <leader>w :w<CR>
nnoremap <leader>qq :q!<CR>

"Create new file (place filename after /)
nnoremap <leader>n :e %:h/

nnoremap <leader><leader><leader> i<space><right><ESC>
"inoremap <A-h> :<C-U>exe v:count1 <C-o>h<CR>
"inoremap <silent> <A-h> :<C-u>call <ESC>hi, repeat([""], v:count1)<CR>
nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

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
inoremap <A-u> <C-o><C-y>
inoremap <A-d> <C-o><C-e>

"inoremap <A-h> <ESC>hi
"inoremap <A-h> <ESC>hi

"inoremap <expr> \ "<C-o>" . nr2char(getchar())

"Visual block
nnoremap <leader>v <C-v>

nnoremap <A-r> <C-r>
" nnoremap <A-o> <C-o>
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
nmap <leader>e :NERDTreeToggle<CR>
vmap <leader>y "+y
"Git status
nmap <leader>gs :Git<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>ga :Git add
nmap <leader>g. :Git add .<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
map Y y$
map ç $
nmap <A-j> 3j
nmap <A-k> 3k
nmap <A-l> 3l
nmap <A-h> 3h

let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
