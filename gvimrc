" 搜索
:set ignorecase    " 搜索时忽略大小写
:set smartcase
:set hlsearch    " 高亮搜索
:set incsearch    " 即使搜索
:set nowrapscan    " 取消搜索循环扫描

" 状态栏 历史 缩进 折叠 语法高亮
set laststatus=2    " 显示状态栏
:set showcmd    " 状态栏显示目前所执行的指令
set cmdheight=2
:set showmode    " 显示模式
:set previewwindow    " 标识预览窗口
set history=1000    " 历史记录1000条
set foldmethod=syntax    " 基于语法代码折叠
:set go=    " 去掉边框
syntax enable    "语法高亮
syntax on

" =========
" 环境配置
" =========
" 控制台响铃(关闭遇到错误时的声音提示)
:set noerrorbells
:set novisualbell
:set t_vb= "close visual bell

" 行控制
:set wildmenu    " vim 自身命令行模式智能补全
:set linebreak
:set textwidth=80
:set wrap

" 缩进
set autoindent      " 设置自动缩进
set smartindent     " 设置智能缩进

" 行号和标尺
:set number     "行号
:set ruler     "标尺
set rulerformat=%15(%c%V\ %p%%%)

" tab
set tabstop=4    " 编辑时制表符的占空格数
set shiftwidth=4    " 格式化时制表符占空格数
set softtabstop=4    " 四个空格视为一个制表符
set expandtab
set smarttab

" 设置行高
set linespace=1

" 插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start

" 自动重新读入
set autoread

" 自动改变当前目录
if has('netbeans_intg')
    set autochdir
endif

" 匹配配对的字符
func! MatchingQuotes()
    inoremap ( ()<left>
    inoremap [ []<left>
    inoremap { {}<left>
    inoremap " ""<left>
    inoremap ' ''<left>
endf

" 在所有模式下都允许使用鼠标，还可以是n,v,i,c等
set mouse=a

" 恢复上次文件打开位置
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" =========
" 图形界面
" =========
if has('gui_running')
    " 只显示菜单
    set guioptions=mcr

    " 高亮光标所在的行
    set cursorline
    
    " 编辑器配色
    colorscheme desert

    " Under Mac
    if has("gui_macvim")
        "开启抗锯齿渲染
        set anti
        
        " MacVim 下的字体配置
        set guifont=Monaco:h12
        set guifontwide=Monaco:h12

        " 半透明和窗口大小
        set transparency=4
        set lines=30 columns=80

        " 使用 MacVim 原生的全屏幕功能
        let s:lines=&lines
        let s:columns=&columns

        func! FullScreenEnter()
            set lines=999 columns=999
            set fu
        endf

        func! FullScreenLeave()
            let &lines=s:lines
            let &columns=s:columns
            set nofu
        endf

        func! FullScreenToggle()
            if &fullscreen
                call FullScreenLeave()
            else
                call FullScreenEnter()
            endif
        endf

        set guioptions+=e
        " Mac 下，按 \\ 切换全屏
        nmap <f11> :call FullScreenToggle()<cr>
        nmap <Leader><Leader> :call FullScreenToggle()<cr>

        " I like TCSH :^)
        set shell=/bin/zsh

        " Set input method off
        set imdisable

        " Set QuickTemplatePath
        let g:QuickTemplatePath = $HOME.'/.vim/templates/'

        " 如果为空文件，则自动设置当前目录为桌面
        lcd ~/Desktop/
    endif
endif

" =========
" 快捷键
" =========
" 标签相关的快捷键 Ctrl
map tn :tabnext<cr>
map tp :tabprevious<cr>
map tc :tabclose<cr>
map <C-n> :tabnew<cr>
map <C-Tab> :tabnext<cr>

"最近打开的文件
nmap <Leader>mr :MRU<cr>

"字体大小
"http://www.vim.org/scripts/script.php?script_id=2809
"<Leader>==    Begin "font size" mode 
"<Leader>++    Increment font size 
"<Leader>--    Decrement font size 
"<Leader>00    Revert to default font size 

" 在文件名上按gf时，在新的tab中打开
map gf :tabnew <cfile><cr>

" 返回当前时间
func! GetTimeInfo()
    "return strftime('%Y-%m-%d %H:%M:%S')
    return strftime('%Y-%m-%d')
endfunction

" 插入模式按 Ctrl + D(ate) 插入当前时间
imap <C-d> <C-r>=GetTimeInfo()<cr>




" vim-markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo (my custom)
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'wakatime/vim-wakatime'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'davidhalter/jedi-vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'wincent/command-t'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=/usr/local/opt/fzf




let g:ackprg = 'ag --nogroup --nocolor --column'
