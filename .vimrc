syntax on
set number
set hidden
set history=1000
set incsearch
set ignorecase
set smartcase
set hlsearch
set ai
nmap <C-j><C-j> :nohlsearch<CR><Esc>
set laststatus=2
set statusline=%<[%n]\ %F\ %7(%m\ %r%)\ %=[%{&ft}]\ [%{&fileencoding}]\ [%{&fileformat}]\ [0x%B]\ %c,%l/%L,%p%%\ [GravitonEdison]
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,japane,sjis,utf-8
set showmatch
set showmode
set showcmd
set listchars=tab:>-,eol:$
set ts=3
set shiftwidth=1
set autoindent
set list
set backup
set backupdir=~/vim/.vimbackup
set swapfile
set directory=~/vim/.vimswap
map <C-z> u
map! <C-z> <ESC>ui
map! <C-x> <ESC>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap <> <><Left>
set mouse=n
