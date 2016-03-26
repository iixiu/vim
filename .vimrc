set encoding=utf-8
set fileencodings=utf-8
 
syntax on           
set t_Co=256        
colorscheme iceberg 

set tabstop=4       
set expandtab       
set shiftwidth=4    
set softtabstop=4   
set ai              
set nu              
set ru              
set ic              
set hlsearch        
set incsearch       
set confirm         
set history=100     
set backspace=2     
set cursorline      
set listchars=tab:▸\ ,eol:¬
set list 

set laststatus=2     
set statusline=%1*%<\ %2*[%F]
set statusline+=%1*\ %3*[%{&encoding},%{&fileformat}
set statusline+=%{\"\".((exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"\"}]
set statusline+=%m%1*%=\ %4*%y%1*\ %5*%l/%L%1*,%5*%c%1*\ %6*\<%P\>%4*
highlight User1 term=underline cterm=underline ctermfg=white
highlight User2 ctermfg=red
highlight User3 ctermfg=cyan
highlight User4 ctermfg=white
highlight User5 term=underline cterm=underline ctermfg=yellow
highlight User6 term=underline cterm=underline ctermfg=green
 
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif

" keymap
cnoremap sudow w !sudo tee % >/dev/null
inoremap jk <ESC>


" code foding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" taglist
let Tlist_Use_Right_Window   = 1
map <F11> :TlistToggle<cr>

" split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

let Tlist_WinWidth=20

"pathogen.vim
execute pathogen#infect()
filetype plugin indent on
