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
set autoindent
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

" 插入模式下backspace可删除字符
set backspace=indent,eol,start

" 快捷键设置
let mapleader='.'
"cmap He Hexplore
"cmap Ve Vexplore
nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>

" 禁用错误铃声
set noerrorbells
set visualbell

"=================================================================================================
" 插件配置
"=================================================================================================

" neocomplete配置
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
"inoremap <expr><C-g> neocomplete#undo_completion()
"inoremap <expr><C-l> neocomplete#complete_common_string()
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" YCM配置
"let g:ycm_auto_trigger=0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
set completeopt=menu,menuone
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" vim-go定制
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_def_mode = 'gopls'
let g:go_referrers_mode = 'gopls'
let g:go_version_warning = 0

