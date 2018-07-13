"
" vimrc
"

" 非兼容模式
set nocompatible

" 插件
call pathogen#infect()
filetype plugin indent on

" 编码格式
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,gb18030,gb2312,cp936

" 缩进设置
set smartindent
set tabstop=4
set shiftwidth=4
set shiftround

" 搜索高亮
set hlsearch
set incsearch

" 语法高亮
syntax on

" 状态栏设置
set laststatus=2
set statusline=%<%{'Ln:\ '}%l,%{'\ Col:\ '}%c%V\ \|\ %Y\ \|\ %{&fenc}(%{&enc}\)\ \|\ %{'Tab:\ '.&sw}\ \|\ %{&ff}%=%8P

" 自动补全
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" vim-go定制
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_version_warning = 0

" 按键映射
cmap He Hexplore
cmap Ve Vexplore
nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>

"=================================================================================================

" 显示行号
set number

" 颜色主题
colorscheme default

" 禁用匹配高亮
let loaded_matchparen = 1

" 禁用自动注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" 打开文件时定位到上次退出时所在行
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
