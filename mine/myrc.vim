"设置目录树宽度
let NERDTreeWinSize=20

"光标一直在中间
auto insertleave,cursormoved * normal! zz

"只剩下目录树时直接退出
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" 用浅色高亮当前行
autocmd InsertLeave * se nocul

" 用浅色高亮当前行"
autocmd InsertEnter * se cul

" 显示标尺"
set ruler

 " 突出显示当前行"
set cursorline

" 每个标签都有且自动打开目录树
let g:nerdtree_tabs_open_on_console_startup=1

" 设置自动折叠
set fdm=indent

"低版本vim不显示警告
let g:go_version_warning = 0

"括号匹配显示问题解决
hi MatchParen ctermfg=212 ctermbg=NONE cterm=underline guifg=#ff79c6 guibg=NONE gui=underline
