" 檔案編碼
set encoding=utf-8
set fileencodings=utf-8
 
" 編輯喜好設定
syntax on           " 語法上色顯示
colorscheme iceberg " 佈景主題
set t_Co=256        " 啟用256色顯示
set tabstop=4       " tab 占幾個字元數
set softtabstop=4   " 實際tab 的長度（tabstop + space）
set expandtab       " 用 space 展開 tab
set ai              " 自動縮排 autoindent
set shiftwidth=4    " 設定自動縮排寬度 = 4 
set nu              " 顯示行號 number
set ru              " 顯示右下角的狀態列 ruler
set backspace=2     " 在 insert mode 也可用 backspace 刪除任意值
set ic              " 設定搜尋忽略大小寫
set hlsearch        " 設定高亮度顯示搜尋結果
set incsearch       " 在關鍵字還沒完全輸入完畢前就顯示結果
set confirm         " 操作過程有衝突時，以明確的文字來詢問
set history=100     " 保留 100 個使用過的指令
set cursorline      " 顯示目前的游標位置
"set listchars=tab:\|\ ,eol:¬
"set list 

" 狀態列設定
set laststatus=2    " 在底部倒數第二行顯示狀態列(statusline)
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
 
" Vim 自動回到檔案上次開啟時讀到位置
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


