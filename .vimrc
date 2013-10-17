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
set list
set listchars=tab:>-,eol:$,trail:+,extends:»,nbsp:%,precedes:«
" 全角スペース・行末のスペース・タブの可視化
if has("syntax")
    syntax on
 
    " PODバグ対策
    syn sync fromstart
 
    function! ActivateInvisibleIndicator()
        # 下の行の"　"は全角スペース
        syntax match InvisibleJISX0208Space "　" display containedin=ALL
        highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
        "syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
        "highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=NONE gui=undercurl guisp=darkorange
        "syntax match InvisibleTab "\t" display containedin=ALL
        "highlight InvisibleTab term=underline ctermbg=white gui=undercurl guisp=darkslategray
    endfunction
    
    augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
    augroup END
endif
set ts=3
set shiftwidth=1
set autoindent
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
