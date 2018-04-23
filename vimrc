set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加
" 设置包括vundle和初始化相关的runtime path
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" vundle结束
set nu!
set rnu
syntax on
set t_Co=256
colorscheme molokai
set encoding=utf-8
set autoindent
set nocompatible
set cindent
set smartindent
set shiftwidth=4 
set backspace=indent,eol,start
set showmatch
set tabstop=4
"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile
"autocmd VimEnter * NERDTree
map <C-e> :NERDTreeToggle<cr>
"map <C-t> :Tlist<cr> 
map <C-l> :tabn<cr>
map <C-o> :tabp<cr>
map <C-u> :Shell 
let NERDTreeWinSize=20

auto insertleave,cursormoved * normal! zz
:imap jj <ESC>
inoremap - ->
inoremap <C-\> <ESC>o
inoremap <C-l> <RIGHT>
inoremap <C-k> <LEFT>
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
hi comment ctermfg=8
"plugin jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au FileType php setlocal dict+=~/.vim/dict/php_funclist.txt
autocmd InsertLeave * se nocul  ""用浅色高亮当前行 
autocmd InsertEnter * se cul    " 用浅色高亮当前行"
set ruler           " 显示标尺"
set cursorline              " 突出显示当前行"
"for vimdiff git mergetool
set laststatus=2 "show the status line
set statusline=%-10.3n  "buffer number
map <silent> <leader>1 :diffget 1<CR> :diffupdate<CR>
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>

let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  

"设置tags  
set tags=tags  
"set autochdir :
set cursorline
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let g:nerdtree_tabs_open_on_console_startup=1
let Tlist_WinWidth=30
""let Tlist_bg=bold
""set expandtab

set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] "显示文件名：总行数，总的字符数
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='dark'
" vim-airline
"let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
endif

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"acp 配置

"my hot key
let mapleader = "\<Space>"
map <Leader>p :set paste<cr>
map <Leader>l :set nopaste<cr>
map <Leader>t :Tlist<cr>

:let g:vimim_cloud = 'google,sogou,baidu,qq'   
:let g:vimim_map = 'tab_as_gi'   
let g:vue_disable_after_processors=1
