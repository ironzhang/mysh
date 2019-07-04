"vimrc

"pathogen插件
call pathogen#infect()
filetype plugin indent on

"编码格式
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,gb18030,gb2312,cp936
"set fencs=utf-8,gbk,ucs-bom,gb18030,gb2312,cp936
"set ambiwidth=double

"状态栏
set laststatus=2
set statusline=%<%{'Ln:\ '}%l,%{'\ Col:\ '}%c%V\ \|\ %Y\ \|\ %{&fenc}(%{&enc}\)\ \|\ %{'Tab:\ '.&sw}\ \|\ %{&ff}%=%8P

"语法格式
syntax on
set number
set tabstop=4
set shiftwidth=4
set smartindent

"查找高亮
set hls

"禁用自动注释功能
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"禁用匹配高亮
let loaded_matchparen = 1

"颜色主题
"colorscheme blue
"colorscheme darkblue
colorscheme default
"colorscheme delek
"colorscheme desert
"colorscheme elflord
"colorscheme evening
"colorscheme industry
"colorscheme koehler
"colorscheme morning
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme ron
"colorscheme shine
"colorscheme slate
"colorscheme torte
"colorscheme zellner

"让vim记忆上次编辑的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"使用系统剪切板
"set clipboard=unnamed

"==============================================================================
"自动补全

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"==============================================================================
"vim-go定制配置

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>

"==============================================================================

cmap He Hexplore
cmap Ve Vexplore
