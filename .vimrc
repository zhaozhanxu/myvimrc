"================================================================
"使用VIM不兼容模式
"================================================================
set nocompatible

"================================================================
"高亮模式
"================================================================
"syntax enable
if has("syntax")
syntax on
endif

"================================================================
"颜色模式
"================================================================
colorscheme molokai
"colorscheme desert
"colorscheme ron
"colorscheme ego

"================================================================
"文件类型探测
"================================================================
filetype on
filetype plugin on

set background=dark

"================================================================
"打开文件时自动到达上次浏览时的位置
"================================================================
"set      viminfo='1000,f1,<500
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
filetype plugin indent on
"git commit添加注释时设置最大宽度和自动换行
"autocmd  Filetype gitcommit setlocal spell textwidth=72
endif

"========================================================
"搜索时及时匹配且不忽略大小写
"========================================================
set incsearch
"set ignorecase
set smartcase

"========================================================
"自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
"========================================================
"set autowrite

"================================================================
"Autoindent
"打开普通文件类型的自动缩进。 该自动缩进不如 cindent 智能， 但它可以为你编辑非C/C++ 文件提供一定帮助。
"================================================================
set autoindent 
set cindent
"set smartindent

"================================================================
"tab indent
"================================================================
set shiftwidth =4
set softtabstop=4
set tabstop=4
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

"================================================================
"将Tab替换为空格
"================================================================
"set expandtab
"set smarttab
"retab
 
"================================================================
"显示括号配对情况
"================================================================
set showmatch

"================================================================
"不在单词中间断行
"================================================================
set linebreak

"================================================================
"自动折行
"================================================================
"set wrap

"================================================================
"光标从行首和行末时可以跳到另一行去
"================================================================
set whichwrap=b,s,<,>,[,]

"================================================================
"如果去掉这一行,默认值set mouse=a就生效了,这时不能用鼠标选中复制.
"================================================================
set mouse=v

"================================================================
"Line number
"================================================================
set number
 
"================================================================
" keep 1500 lines of command line history
"================================================================
set history=1500
 
"================================================================
"总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
"================================================================
set laststatus=2

"================================================================
"标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。
"================================================================
set ruler

"================================================================
"命令行显示输入的命令
"命令行显示vim当前模式
"================================================================
set showcmd
set showmode

"================================================================
"输入字符串就显示匹配点
"搜索时高亮显示被找到的文本
"================================================================
set incsearch
set hlsearch

"================================================================
"与系统剪贴板共享
"================================================================
set clipboard+=unnamed

"================================================================
"允许汉字断行
"================================================================
set fo+=mB
 
"================================================================
"使用“Shift + 方向键”选择文本
"================================================================
"set keymodel=startsel,stopsel

"================================================================
"显示中文帮助
"================================================================
language message en_US.UTF-8
set helplang=cn
set ambiwidth=double
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"================================================================
"自动切换当前目录为当前文件所在的目录
"================================================================
set autochdir

"================================================================
"突出显示当前行
"================================================================
set cursorline

"================================================================
"覆盖文件时不备份
"================================================================
set nobackup

"================================================================
"试试看
"================================================================
set statusline=%F%m%r,\ %Y,\ %{&fileformat}\ \ \ ASCII=\%b,HEX=\0x\%B\ \ \ %l,%c%V\ \ %p%%

"================================================================
"光标到底部和顶部时保持5行距离
"================================================================
set scrolloff=5

"================================================================
"命令行高度为2
"================================================================
set cmdheight=2
 
"================================================================
"在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来。
"================================================================
set wildmenu

"================================================================
"Foldmethod
"================================================================
set fdm=marker
"set fdm=syntax
 
set foldenable
set foldmethod=manual
set foldlevel=1

"===============================================================
"Highlight All Math Operator
"===============================================================
"C math operators
syn match	cMathOperator			display "[-+\*/%=]"

"C pointer operators
syn match	cPointerOperator		display "->\|."

"C logical	operators - boolean results
syn match	cLogicalOperator		display "[!<>]=\="
syn match	cLogicalOperator		display "=="

"C bit operators
syn match	cBinaryOperator			display "\(&\||\|\^\|<<\|>>\)=\="
syn match	cBinaryOperator			display "\~"
syn match	cBinaryOperatorError	display "\~="

"More C logical operators - highlight in preference to binary
syn match	cLogicalOperator		display "&&\|||"
syn match	cLogicalOperatorError	display "\(&&\|||\)="

"Math Operator
hi cMathOperator            guifg=#3EFFE2
hi cPointerOperator         guifg=#3EFFE2
hi cLogicalOperator         guifg=#3EFFE2
hi cBinaryOperator          guifg=#3EFFE2
hi cBinaryOperatorError     guifg=#3EFFE2
hi cLogicalOperator         guifg=#3EFFE2
hi cLogicalOperatorError    guifg=#3EFFE2

"========================================================
"NerdTree setting 左侧文件列表
"========================================================
let NERDChristmasTree=1
" 关闭文件时同时关闭文件浏览器
let g:NERDTreeQuitOnOpen                   = 1
let g:NERDTreeWinSize                      = 20

"========================================================
" Targlist右侧函数列表
"========================================================
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"========================================================
"minibuffer setting
"========================================================
let g:miniBufExplMapWindowNavVim           = 1
let g:miniBufExplMapWindowNavArrows        = 1
let g:miniBufExplMapCTabSwitchBufs         = 1
let g:miniBufExplModSelTarget              = 1
let g:miniBufExplTabWrap                   = 1
let g:miniBufExplUseSingleClick            = 1

"========================================================
"ycm setting
"========================================================
let g:ycm_global_ycm_extra_conf		= '~/.ycm_extra_conf.py'
let g:ycm_semantic_triggers			= {}
let g:ycm_semantic_triggers.c		= ['->', '.', ' ', '(', '[', '&']
let g:ycm_error_symbol				= '>>'
let g:ycm_warning_symbol			= '>*'
let g:ycm_server_log_level = 'debug'
let g:ycm_python_binary_path = '/usr/bin/python3'

"========================================================
" key map
"========================================================
noremap <silent><F9> :A<CR>
noremap <silent><F3> :Grep<CR>
noremap <silent><F6> :PluginInstall<CR> 
"用空格键来打开/关闭折叠
nnoremap <silent><space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 
"开关文件浏览器
noremap <silent><C-z> :NERDTreeToggle<CR>
"在文件浏览器中定位当前文件
noremap <silent><F2>f :NERDTreeFind<CR>
noremap <silent><C-x> :TagbarToggle<CR>
"ycm jumper
noremap <silent><F4> :YcmDiags<CR>
"noremap <silent><C-[> :YcmCompleter GoToDeclaration<CR>
noremap <silent><C-]> :YcmCompleter GoToDefinition<CR>
"noremap <silent><C-a> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

"========================================================
" plug settings
"========================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'
Bundle 'fatih/vim-go'

filetype plugin indent on
"================================================================
"
"================================================================

