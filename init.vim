source $HOME/.config/nvim/themes/airline.vim

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
" Plug 'freeo/vim-kalisi'
Plug '~/WSL/GitHub/paste-replace'
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color'
Plug 'scrooloose/nerdtree'
"Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
"Expand i(nside) and a(rround) functionalities
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
" Plug 'wellle/targets.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'christoomey/vim-tmux-navigator'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/tagbar'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'voldikss/vim-floaterm'
Plug 'andymass/vim-matchup'
Plug 'mhinz/vim-startify'
"Color Picker
Plug 'blindFS/vim-colorpicker'
Plug 'puremourning/vimspector'
"Emmet/completion
Plug 'mattn/emmet-vim'
"Live preview
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"Zoom (like tmux zoom)
Plug 'szw/vim-maximizer'
"Git wrapper
Plug 'tpope/vim-fugitive'
call plug#end()

autocmd VimEnter * GitGutterSignsDisable
autocmd VimEnter * GitGutterLineNrHighlightsEnable
autocmd VimEnter * highlight GitGutterAddLineNr ctermfg=23
autocmd VimEnter * highlight GitGutterChangeLineNr ctermfg=23
autocmd VimEnter * highlight GitGutterDeleteLineNr ctermfg=23
autocmd VimEnter * highlight GitGutterChangeDeleteLine ctermfg=23
autocmd ColorScheme * highlight GruvboxPurple ctermfg=166
autocmd ColorScheme * highlight GruvboxRedBold ctermfg=88 ctermbg=226
autocmd ColorScheme * highlight GruvboxRed ctermfg=23
autocmd ColorScheme * highlight GruvboxBlue ctermfg=23
autocmd ColorScheme * highlight GruvboxGreen ctermfg=23
autocmd ColorScheme * highlight GruvboxGreenBold ctermfg=29
autocmd ColorScheme * highlight GruvboxYellow ctermfg=71
autocmd ColorScheme * highlight GruvboxOrange ctermfg=23
autocmd ColorScheme * highlight GruvboxAqua ctermbg=NONE ctermfg=166
autocmd ColorScheme * highlight GruvboxAquaBold ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight GruvboxFg3 ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight GruvboxFg1 ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight GruvboxYellowSign ctermbg=NONE ctermfg=166

autocmd ColorScheme * highlight Normal ctermbg=NONE ctermfg=214
" autocmd ColorScheme * highlight Normal ctermbg=232 ctermfg=214

autocmd ColorScheme * highlight Operator ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight NvimOperator ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight htmlTagName ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight htmlTag ctermbg=NONE ctermfg=88
" autocmd ColorScheme * highlight htmlHead ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight htmlArg ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight htmlEndTag ctermbg=NONE ctermfg=23
" autocmd ColorScheme * highlight htmlString ctermbg=NONE ctermfg=65
" autocmd ColorScheme * highlight htmlTagN ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight htmlItalic ctermbg=NONE
autocmd ColorScheme * highlight cssDefinition ctermbg=NONE ctermfg=71
autocmd ColorScheme * highlight cssBraces ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight cssIdentifier ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight cssTagName ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight cssAttrComma ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight cssAttrRegion ctermbg=NONE ctermfg=66
autocmd ColorScheme * highlight cssUnitDecorators ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight jsFunction ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight jsFuncBlock ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight jsFuncCall ctermbg=NONE ctermfg=29
autocmd ColorScheme * highlight jsFuncBraces ctermbg=NONE ctermfg=30
autocmd ColorScheme * highlight jsBrackets ctermbg=NONE ctermfg=71
autocmd ColorScheme * highlight jsNoise ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight jsDot ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight jsGlobalObjects ctermbg=NONE ctermfg=166
autocmd ColorScheme * highlight jsObjectProp ctermbg=NONE ctermfg=166
autocmd ColorScheme * highlight jsUndefined ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight Title ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight NonText ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight LineNr ctermbg=NONE  ctermfg=88
autocmd ColorScheme * highlight String ctermbg=NONE ctermfg=66
autocmd ColorScheme * highlight SignColumn ctermbg=NONE
autocmd ColorScheme * highlight Statement ctermbg=NONE
autocmd ColorScheme * highlight Todo ctermbg=NONE
autocmd ColorScheme * highlight Underlined ctermbg=NONE ctermfg=58
autocmd ColorScheme * highlight ErrorMsg ctermbg=NONE ctermfg=124
autocmd ColorScheme * highlight MatchParen ctermbg=5
autocmd ColorScheme * highlight CursorLineNr ctermbg=NONE
autocmd ColorScheme * highlight CursorLine ctermbg=NONE cterm=underline
autocmd ColorScheme * highlight CursorColumn ctermbg=NONE cterm=underline
autocmd ColorScheme * highlight Cursor ctermbg=black ctermfg=214 cterm=NONE
autocmd ColorScheme * highlight Search ctermfg=46 ctermbg=NONE cterm=NONE
autocmd ColorScheme * highlight Visual ctermbg=NONE
autocmd ColorScheme * highlight Comment ctermfg=237
autocmd ColorScheme * highlight PmenuSBar ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight Pmenu ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight vimHiKeyError ctermbg=52 ctermfg=65
autocmd ColorScheme * highlight Folded ctermbg=52 ctermfg=214
autocmd ColorScheme * highlight FoldColumn ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight Todo ctermbg=NONE ctermfg=197
autocmd ColorScheme * highlight Ignore ctermbg=NONE ctermfg=235
" autocmd ColorScheme * highlight op_lv0 ctermfg=88
" autocmd ColorScheme * highlight op_lv1 ctermfg=190
" autocmd ColorScheme * highlight op_lv2 ctermfg=165
" autocmd ColorScheme * highlight op_lv3 ctermfg=35
" autocmd ColorScheme * highlight op_lv4 ctermfg=19
" autocmd ColorScheme * highlight op_lv5 ctermfg=9
" autocmd ColorScheme * highlight lv5c ctermfg=108
" autocmd ColorScheme * highlight lv4c ctermfg=9
" autocmd ColorScheme * highlight lv3c ctermfg=190
" autocmd ColorScheme * highlight lv2c ctermfg=19
" autocmd ColorScheme * highlight lv1c ctermfg=165

" Plungins higlighting
autocmd ColorScheme * highlight StartifyFile ctermbg=NONE ctermfg=214
autocmd ColorScheme * highlight NERDTreeFlags ctermbg=NONE ctermfg=23
autocmd ColorScheme * highlight NERDTreeCWD ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight NERDTreeDir ctermbg=NONE ctermfg=65
autocmd ColorScheme * highlight NERDTreeDirSlash ctermbg=NONE ctermfg=88
autocmd ColorScheme * highlight CocInfoFloat ctermbg=16 ctermfg=231
autocmd ColorScheme * highlight CocErrorFloat ctermbg=16 ctermfg=231
autocmd ColorScheme * highlight CocWarningFloat ctermbg=16 ctermfg=231
autocmd ColorScheme * highlight CocHintFloat ctermbg=16 ctermfg=231
autocmd ColorScheme * highlight FZFbg ctermbg=black ctermfg=black 
autocmd ColorScheme * highlight EasyMotionTarget2First ctermfg=76 ctermbg=NONE cterm=NONE
autocmd ColorScheme * highlight EasyMotionTarget2Second ctermfg=197 ctermbg=NONE cterm=NONE
autocmd ColorScheme * highlight EasyMotionShade ctermfg=59 ctermbg=NONE cterm=NONE
autocmd ColorScheme * highlight EasyMotionMoveHL ctermfg=76 ctermbg=NONE cterm=NONE
autocmd ColorScheme * highlight EasyMotionIncSearch ctermfg=76 ctermbg=NONE cterm=NONE
autocmd ColorScheme * highlight MatchParen ctermfg=76 ctermbg=NONE cterm=NONE
autocmd ColorScheme * highlight MatchWord ctermfg=76 ctermbg=NONE cterm=NONE
hi airline_a_to_airline_b_inactive term=NONE cterm=NONE ctermbg=NONE ctermfg=88
hi airline_y_to_airline_z_inactive term=NONE cterm=NONE ctermbg=NONE ctermfg=88
hi airline_c ctermbg=NONE
hi airline_c ctermfg=88
hi airline_tabfill ctermbg=NONE
highlight default link WhichKeySeperator NonText
highlight default link WhichKey          MatchWord
highlight default link WhichKeyGroup     Normal
" highlight default link WhichKeyDesc      Normal
" Hide which key status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

colorscheme gruvbox

set nocompatible
set background=dark
set number
set relativenumber
set mouse=a
set showcmd
set incsearch
set inccommand=split
set completeopt=noinsert,menuone,noselect
set timeoutlen=1000
set signcolumn=auto
set scrolloff=5
set scroll=1
set linebreak
set nowrap
set hidden
set nohlsearch
set tw=0
set wm=0
set statusline=%{FugitiveStatusline()}
syntax on

function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

command! -nargs=0 FindHGroup call SynStack()
cnoremap <M-h> <Left>
cnoremap <M-l> <Right>
cnoremap <M-k> <Up>
cnoremap <M-j> <Down>
nnoremap <SPACE> <Nop>
let mapleader="\<space>"
noremap <M-b> <C-o>
noremap <M-a> <C-i>
noremap <C-A-i> :echo 'ok!'
map <TAB> i<TAB><ESC>l
map <S-TAB> <<
imap <S-TAB> <C-d>
" nnoremap <expr> <Enter> &ma?":set paste\<cr>\<esc>o\<esc>:set nopaste\<cr>":"\<cr>"
nnoremap <Enter> i<Enter><ESC>

" Tabs and buffers
map <silent> <M-3> :bn<CR>
map <silent> <M-2> :bp<CR>
map <silent> <M-1> 
map <leader>cb :bd<CR>
map <leader>nt :tabnew<CR>
map <leader>ct :tabclose<CR>

" Commenter
map <leader>3 gcc

" FZF
" g:fzf_colors

map <silent> <leader>sf :GFiles<CR>
map <silent> <leader>sp :Files<CR>
map <silent> <leader>sgd :GFiles?<CR>
map <silent> <leader>sl :BLines<CR>
map <silent> <leader>bl :Lines<CR>
map <silent> <leader>st :BTags<CR>
map <silent> <leader>bt :Tags<CR>
map <silent> <leader>hf :History<CR>
map <silent> <leader>h: :History:<CR>
map <silent> <leader>h/ :History/<CR>
map <silent> <leader>s: :Commands<CR>
map <silent> <leader>sc :BCommits<CR>
map <silent> <leader>bc :Commits<CR>
map <silent> <leader>sm :Maps<CR>
map <silent> <leader>´´ :Marks<CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8} }

" let g:fzf_preview_window = ['right:50%', 'ctrl-/']
" map <silent> \t :call fzf#run({'source': 'rg --files --column --no-heading --hidden --follow --glob "!.git/*"', 'sink': 'e', 'down': '~30%', 'options': '--bind ctrl-o:up,ctrl-l:down'})<cr>
" map <silent> <F2> :call fzf#run({'source': 'rg --files --column --no-heading --hidden --follow --glob "!.git/*"', 'sink': 'e', 'down': '~30%', 'options': '--bind ctrl-o:up,ctrl-l:down'})<cr>
" TODO
" map \l <plug>(fzf-complete-buffer-line)
" map \b <plug>(fzf-complete-line)

let g:fzf_colors =
\ { 'fg':      ['fg', 'Label'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'LineNr'],
  \ 'fg+':     ['fg', 'Normal'],
  \ 'bg+':     ['bg', 'FZFbg'],
  \ 'hl+':     ['fg', 'Search'],
  \ 'info':    ['fg', 'GruvboxPurpleBold'],
  \ 'border':  ['fg', 'LineNr'],
  \ 'prompt':  ['fg', 'PreProc'],
  \ 'disabled': ['bg', 'Label'],
  \ 'pointer': ['fg', 'Search'],
  \ 'gutter': ['fg', 'FZFbg'],
  \ 'marker':  ['fg', 'Todo'],
  \ 'spinner': ['fg', 'Todo'],
  \ 'header':  ['fg', 'Label'] }


" call fzf#run({'source': [1, 2, 3], 'down': '~40%'}))

" fzf#wrap injects 'down': '~40%' by default, so
" call fzf#run(fzf#wrap({'source': [1, 2, 3]}))

" let g:fzf_preview_window = ['right:50%', 'ctrl-/']
" let g:fzf_preview_window = ['up:40%', 'ctrl-/']

" COC
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gt <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Startify
let g:startify_bookmarks = [ {'c': '~/.config/nvim/init.vim'}]
let g:startify_session_autoload = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 1
map <silent> <M-s> :Startify<CR>

" Floaterm
map <silent> <leader>t :FloatermNew<CR>

" Easymotion
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1

" JK motions: Line motions
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
" Find overwindow (biderectional)

" Remap original f action
nnoremap <leader>f f
nnoremap <leader>F F

map <leader>w <Plug>(easymotion-overwin-w)
map <leader>W <Plug>(easymotion-bd-W)
map <leader>e <Plug>(easymotion-bd-e)
map <leader>E <Plug>(easymotion-bd-E)
map <leader>l <Plug>(easymotion-overwin-line)
map f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)
map <leader>t <Plug>(easymotion-bd-t)
" nmap t <Plug>(easymotion-overwin-t)


" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" Find next occurence of a char using easymotion


" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" NerdTree
nmap <silent> <M-e> :NERDTreeToggle<CR>

" TagBar
nmap <M-t> :TagbarToggle<CR><C-l>

" Maximizer
nnoremap <leader>z :MaximizerToggle<CR>

"Git status
nmap <leader>gs :Git<CR>
nmap <leader>gc :Git commit<CR>
nmap <leader>ga :Git add
nmap <leader>g. :Git add .<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

" Matchup
let g:matchup_matchparen_offscreen = {'method': 'status'}

" Which key
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
let g:which_key_sep = '-->'
" let g:which_key_vertical = 1
" let g:which_key_use_floating_win = 1
" let g:which_key_floating_opts = { 'width': '-100'}
" let g:which_key_position = 'botright'
" let g:which_key_floating_relative_win = 1
let g:which_key_hspace = 2
" let g:which_key_map.s = { 'name' : 'fzf' }
" let g:which_key_map.s.f = ['update', 'save-file']
" let g:which_key_map =  {'s': 'FZF Search'}
" let g:which_key_map =  {'b': 'FZF Search Loaded Buffers'}
" let g:which_key_map =  {'h': 'FZF History'}
" let g:which_key_map =  {'f': 'Find Forward'}
" let g:which_key_map =  {'F': 'Find Backwards'}
" let g:which_key_map['s'] = [ '<Plug>NERDCommenterToggle'  , 'FZF Search']
" let g:which_key_map['b'] = [ ':CocCommand explorer'       , 'FZF Search Loaded Buffers']
" let g:which_key_map['h'] = [ ':Files'                     , 'FZF History']
" let g:which_key_map = [ 'f'                     , 'Find Forward']
" let g:which_key_map = [ 'F'                     , 'Find Backwards']
" let g:which_key_map.s =  {'f': 'Git Files'}
" let g:which_key_map.s =  {'p': 'Path Files'}
" let g:which_key_map.s =  {'l': 'Search Lines (Current Buffer)'}
" let g:which_key_map.s =  {'t': 'Search Tags (Current Buffer)'}
" let g:which_key_map.s =  {'c': 'Search Commits (Current Buffer)'}
" let g:which_key_map.s =  {':': 'Search Commands'}
" let g:which_key_map.s =  {'m': 'Search Mappings'}
" let g:which_key_map.b =  {'l': 'Search Lines (Loaded Buffers)'}
" let g:which_key_map.b =  {'t': 'Search Tags (Loaded Buffers)'}
" let g:which_key_map.b =  {'c': 'Search Commits (Loaded Buffers)'}
" let g:which_key_map.h =  {'f': 'Files History'}
" let g:which_key_map.h =  {':': 'Commands History'}
" let g:which_key_map.h =  {'/': 'Search History'}

" Emmet
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
    \  'html': {
    \    'snippets': {
    \      '!': '!!!+html>(head>(meta[charset=${charset}]+meta[name="viewport" content="width=device-width,initial-scale=1.0"]+meta[http-equiv="X-UA-Compatible" content="ie=edge"]+title +body'
        \}
    \}
\}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <M-i> 2<C-u>
nnoremap <M-u> 2<C-d>
nnoremap <M-y> 2zh
nnoremap <M-o> 2zl
" nnoremap <M-,> H3<C-y>
" nnoremap <M-m> L3<C-e>
" nnoremap <M-n> 3zh
" nnoremap <M-.> 3zl
" nnoremap <Up> <C-b>
" nnoremap <Up> <C-f>
" nnoremap Â¬ç zL
" nnoremap Â¬g zR

" Find another keybinding for this
nnoremap S S<ESC>
nnoremap <expr> <A-ç> "mpA" . (nr2char(getchar())) . "<ESC>`p"
inoremap <expr> <A-ç> "<C-o>mp<C-o>A" . (nr2char(getchar())) . "<C-o>`p"
" nnoremap <leader>ç ZZ

"nnoremap <leader>q :q<CR>
"nnoremap <leader>wq :wq<CR> "Not needed, ZZ does the same, but saving only when necessary
nnoremap <leader><leader>w :w<CR>
nnoremap <leader>qq :q!<CR>

"Create new file (place filename after /)
nnoremap <leader>n :e %:h/

nnoremap <C-Space> i<space><right><ESC>
"inoremap <A-h> :<C-U>exe v:count1 <C-o>h<CR>
"inoremap <silent> <A-h> :<C-u>call <ESC>hi, repeat([""], v:count1)<CR>
nnoremap <silent> <leader>o :<C-u>call append(line("."), repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([''], v:count1))<CR>

"Normal mode commands while holding Alt in insert mode

" TODO Fix next lines
inoremap <M-i> <C-o>3<C-y>
inoremap <M-u> <C-o>3<C-e>
inoremap <M-y> <C-o>3zh
inoremap <M-o> <C-o>3zl
" inoremap Â¬b <C-o><C-b>
" inoremap Â¬f <C-o><C-f>
" inoremap Â¬L <C-o>zL
" inoremap Â¬R <C-o>zR

inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>
inoremap <A-w> <C-o>w
inoremap <A-e> <C-o>e<C-o>l
inoremap <A-b> <C-o>b
inoremap <A-B> <C-o>B
inoremap <A-W> <C-o>W
inoremap <A-x> <C-o>x
inoremap <A-X> <C-o>X
inoremap <A-u> <C-o><C-y>
inoremap <A-d> <C-o><C-e>
inoremap <A-f> <ESC>f

"inoremap <A-h> <ESC>hi
"inoremap <A-h> <ESC>hi

"inoremap <expr> \ "<C-o>" . nr2char(getchar())

"Visual block
nnoremap <leader>v <C-v>

nnoremap <A-r> <C-r>
" nnoremap <A-o> <C-o>
nnoremap <A-x> mxlxh`x
nnoremap 1p "0p
inoremap <A-p> <C-r>

"Toggle file maximization while on split screen
nnoremap 99 %
nnoremap <silent> <leader>hh :set cursorline! cursorcolumn!<CR>
inoremap jj <ESC>
vnoremap <leader> <ESC>

nnoremap <M-0> ^
nnoremap ç $
onoremap ç $
nnoremap <A-j> 3j
nnoremap <A-k> 3k
nnoremap <A-l> 3l
nnoremap <A-h> 3h
