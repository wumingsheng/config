" 最常用的是逗号和空格nmap、imap、cmap、vmap 非递归映射 nnoremap/inoremap/cnoremap/vnoremap推荐使用非递归映射
" n[ormal] i[nsert] c[ommand] v[isual]
" <Up><Down><Right><Left><End><Space><ESC><CR><C-w><leader>
" `^代表上次编辑的地方
" <k0> - <k9> 小键盘 0 到 9
" <S-...> Shift＋键
" <C-...> Control＋键
" <M-...> Alt＋键 或 meta＋键
" <A-...> 同 <M-...>
" <Esc> Escape 键
" <Up> 光标上移键
" <Space> 插入空格
" <Tab> 插入Tab
" <CR> 等于<Enter>
" <buffer>，映射将只局限于当前缓冲区（也就是你此时正编辑的文件）
" <silent>是指执行键绑定时不在命令行上回显
" <special>一般用于定义特殊键怕有副作用的场合。比如： :map <special> <F12> /Header<CR>
" <unique>一般用于定义新的键映射或者缩写命令的同时检查是否该键已经被映射，如果该映射或者缩写已经存在，则该命令会失败























" 定义command命令
com! FormatJSON %!python3 -m json.tool
com! GitP !git add . && git commit -m i && git push



" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug '907th/vim-auto-save'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'w0ng/vim-hybrid'
Plug 'sbdchd/neoformat'
Plug 'yggdroot/indentline'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'      " ys iw "    cs"'  cs(]  ds'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'             " Ag[PATTREN]模糊搜索字符串   Files[path]模糊搜索目录
Plug 'brooth/far.vim'              " :Far foo bar **/*.py :Fardo
Plug 'majutsushi/tagbar'         " :TagbarToggle
Plug 'vasconcelloslf/vim-interestingwords'    "<lead>k
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', {'do':'make'}
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'rtp': 'after'}
Plug 'jszakmeister/markdown2ctags'
Plug 'elzr/vim-json'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'aquach/vim-http-client'
Plug 'liuchengxu/vim-which-key'
Plug 'hecal3/vim-leader-guide'
Plug 'morhetz/gruvbox'
Plug 'skywind3000/quickmenu.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()












let g:NERDSpaceDelims = 1
let g:quickmenu_options = "HL"
let g:mapleader = "\<Space>"
let g:maplocalleader = ","
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.git$']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let b:ale_fixers = {'go': ['golint']}
let g:vim_json_syntax_conceal = 0
let g:NERDTreeQuitOnOpen = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:neoformat_enabled_go = ['goimports']
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save_silent = 0  "  display the auto-save notification
let g:go_fmt_command = "goimports"
let g:deoplete#enable_at_startup = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:tagbar_type_markdown = {'ctagstype': 'markdown','ctagsbin' : '/home/user/.vim/plugged/markdown2ctags/markdown2ctags.py','ctagsargs' : '-f - --sort=yes','kinds' : ['s:sections','i:images'],'sro' : '|','kind2scope' : {'s' : 'section',},'sort': 0,}
let g:deoplete#sources#go#gocode_binary = '/home/user/go/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_auto_type_info = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_auto_sameids = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_deadline = "5s"
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:which_key_hspace = 15
let g:gruvbox_contrast_dark='hard'   "hard medium soft
let g:airline_powerline_fonts = 1

colorscheme gruvbox   " gruvbox  hybrid
syntax on
syntax enable
filetype on
filetype plugin on
filetype plugin indent on
" set list lcs=tab:\|\
set completeopt-=preview
set background=dark
set shell=/usr/bin/zsh
set number
set foldmethod=indent
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936    "  打开文件中文乱码
set termencoding=utf-8
set encoding=utf-8
set autoindent
set textwidth=100
set matchtime=2 "短暂跳转到匹配括号的时间
set smartindent                                      "开启新行时使用智能自动缩进
set expandtab                                         "将Tab键转换为空格
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度的空格
set cursorline                                        " 突出显示当前行
set autoread                                          " 当文件在外部被修改，自动更新该文件
set hlsearch                                          "高亮搜索
set incsearch                                         "搜索实时匹配
set ignorecase                                        "搜索模式里忽略大小写
set smartcase                                         "如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
set laststatus=2                                   "启用状态栏信息
set cmdheight=1                                      "设置命令行的高度为2，默认为1
" set nowrap                                            "设置不自动换行
set wrap                                            "设置自动换行
set shortmess=atI                                     "去掉欢迎界面
" 文件格式，默认 ffs=dos,unix
" set fileformat=unix                                   "设置新文件的<EOL>格式
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型
set guifont="SauceCodePro Nerd Font Mono:h11"
set mouse=a                    " 在任何模式下启用鼠标
set nofoldenable                                        "折叠
nnoremap <C-space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
set breakindent
set linebreak
set mousemodel=popup                                   "开启右键快捷方式
" set guioptions+=b                                    "添加水平滚动条
set selection=inclusive                          "选择文本时光标所在的位置也被选中
set selectmode=    "不适用selectmode
set keymodel=
set wildmenu
set wildmode=full
set whichwrap=b,s,<,>,[,]
"set spell                                      "拼写检查
set ru
set sm
set backspace=indent,eol,start whichwrap+=<,>,[,]
set ai " 自动缩进，新行与前面的行保持—致的自动空格
set aw  " 自动写，转入shell或使用：n编辑其他文件时，当前的缓冲区被写入
set ic                          " 在查询及模式匹配时忽赂大小写
set cin
set lbr
set fo+=mB
set ambiwidth=double
set nocp
set nocompatible " 防止进入vi兼容模式
set nobackup
set noswapfile
set history=1024
set autochdir
set clipboard=unnamed          " Vim 的默认寄存器和系统剪贴板共享
set winaltkeys=no         " 设置 alt 键不映射到菜单栏
set showmatch          " 显示括号配对，当键入“]”“)”时，高亮度显示匹配的括号
set showmode           " 处于文本输入方式时加亮按钮条中的模式指示器
set showcmd             " 在状态栏显示目前所执行的指令，未完成的指令片段亦会显示出来
set warn       " 对文本进行了新的修改后，离开shell时系统给出显示(缺省) /nowarn
set ws            " 在搜索时如到达文件尾则绕回文件头继续搜索 /nows
set cindent                 " 以C/C++的模式缩进
" set noignorecase       " 默认区分大小写
set ruler                     " 打开状态栏标尺
set scrolloff=5            " 设定光标离窗口上下边界 5 行时窗口自动滚动
" set lines=1000
" set columns=1000
set helplang=cn
" set nohlsearch "取消高亮显示 （查找字符串是，找到后高亮显示）
set incsearch "在输入搜索的字符串同时就开始搜索已经输入的部分
" 启用每行超过80列的字符提示（字体变蓝并加下划线），不启用就注释掉
" au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
set writebackup                             "保存文件前建立备份，保存成功后删除该备份
set nobackup                                "设置无备份文件
" set noswapfile                              "设置无临时文件
set vb t_vb=                                "关闭提示音
set softtabstop=4      " 使得按退格键时可以一次删掉 4 个空格,不足 4 个时删掉所有剩下的空格）
set tabstop=4                                        "设置Tab键的宽度
set shiftwidth=4        " 设定 << 和 >> 命令移动时的宽度为 4
set nrformats=
set nolinebreak
set breakat=
set breakindent
set sidescroll=5
" set listchars+=precedes:<,extends:>
set updatetime=100
set timeoutlen=500
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set clipboard=unnamedplus

















augroup go
    autocmd!

    " Show by default 4 spaces for a tab
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

    " :GoBuild and :GoTestCompile
    autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

    " :GoTest
    autocmd FileType go nmap <leader>t  <Plug>(go-test)

    " :GoRun
    autocmd FileType go nmap <leader>r  <Plug>(go-run)

    " :GoDoc
    autocmd FileType go nmap <Leader>d <Plug>(go-doc)

    " :GoCoverageToggle
    autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

    " :GoInfo
    autocmd FileType go nmap <Leader>i <Plug>(go-info)

    " :GoMetaLinter
    autocmd FileType go nmap <Leader>l <Plug>(go-metalinter)

    " :GoDef but opens in a vertical split
    autocmd FileType go nmap <Leader>v <Plug>(go-def-vertical)
    " :GoDef but opens in a horizontal split
    autocmd FileType go nmap <Leader>s <Plug>(go-def-split)

    " :GoAlternate  commands :A, :AV, :AS and :AT
    autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
    autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
    autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
augroup END





augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=2
    autocmd FileType json set softtabstop=2 tabstop=8
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END















" 切换窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

" 屏幕行和实际行移动键统一
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" Open :GoDeclsDir with ctrl-g
nmap <C-g> :GoDeclsDir<cr>
imap <C-g> <esc>:<C-u>GoDeclsDir<cr>



" NERDTree
map <leader>n :NERDTreeToggle<CR>


" 使vim配置文件生效
nnoremap <silent> <leader>r :source ~/.config/nvim/init.vim <CR>




" ============================================================
" quickmenu 命令提示菜单
" function quickmenu#append(text, action [, help = '' [, ft = '']])
" ============================================================
noremap <silent> <leader>/ :call quickmenu#toggle(0) <CR>



call g:quickmenu#append('# common', '')
call g:quickmenu#append('LastEX', '@:', 'last command')
call g:quickmenu#append('Terminal', 'terminal', 'open Terminal')
tnoremap <Esc> <C-\><C-n>
call g:quickmenu#append('split |', 'vsp', 'vsplit')
call g:quickmenu#append('split -', 'sp', 'vsplit')
call g:quickmenu#append('fzf', 'Files', 'Files')



call g:quickmenu#append('# vim', '')
call g:quickmenu#append('Source', 'source ~/.config/nvim/init.vim', 'source .vimrc', 'vim')
call g:quickmenu#append('Home', 'Startify', 'Startify Home Page')

call g:quickmenu#append('# plugin', '')
call g:quickmenu#append('PlugInstall', 'PlugInstall', 'install plugin')
call g:quickmenu#append('PlugClean', 'PlugClean', 'remove plugin')

call g:quickmenu#append('# NerdTree', '')
call g:quickmenu#append('NERDTreeToggle', 'NERDTreeToggle', 'toggle NerdTree')

call g:quickmenu#append('# git', '')
call g:quickmenu#append('GitDiff', 'Gdiff', 'Gdiff')
call g:quickmenu#append('GitPush', 'Gitp', 'git add/commit/push')
call g:quickmenu#append('GitStatus', 'Gstatus', 'Gstatus')

call g:quickmenu#append('# vim-go', '')
call g:quickmenu#append('GoBuild', 'GoBuild', 'go build', 'go')
call g:quickmenu#append('GoInstall', 'GoInstall', 'go install','go')
call g:quickmenu#append('GoTest', 'GoTest', 'go test','go')
call g:quickmenu#append('GoTestFunc', 'GoTestFunc', 'go test func', 'go')
call g:quickmenu#append('GoRun', 'GoRun', 'go run', 'go')
call g:quickmenu#append('GoDebugStart', 'GoDebugStart', 'go debug', 'go')
call g:quickmenu#append('GoDef', 'GoDef', 'go def', 'go')
call g:quickmenu#append('GoDoc', 'GoDoc', 'go doc', 'go')
call g:quickmenu#append('Gofmt', 'Gofmt', 'go fmt', 'go')
call g:quickmenu#append('Goimports', 'Goimports', 'go imports', 'go')
call g:quickmenu#append('GoRename', 'GoRename', 'go rename', 'go')
call g:quickmenu#append('GoMetaLinter', 'GoMetaLinter', 'go metalinter', 'go')
call g:quickmenu#append('GoCallees', 'GoCallees', 'GoCallees', 'go')
call g:quickmenu#append('GoReferrers', 'GoReferrers', 'GoReferrers', 'go')
call g:quickmenu#append('GoImplements', 'Goimports', 'Goimports', 'go')












" vim-which-key
call which_key#register('<Space>', "g:which_key_leader_map")
call which_key#register(',', "g:which_key_localleader_map")

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>      :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual  ','<CR>

let g:which_key_leader_map = {}
let g:which_key_localleader_map =  {}


" =======================================================
" Create menus based on existing mappings
" =======================================================
" You can pass a descriptive text to an existing mapping.

let g:which_key_leader_map.r = 'source vim'


" =======================================================
" Create menus not based on existing mappings:
" =======================================================
" Provide commands(ex-command, <Plug>/<C-W>/<C-d> mapping, etc.) and descriptions for existing mappings
let g:which_key_leader_map['w'] = {
            \ 'name' : '+windows' ,
            \ 'w' : ['<C-W>w'     , 'other-window']          ,
            \ 'd' : ['<C-W>c'     , 'delete-window']         ,
            \ '-' : ['<C-W>s'     , 'split-window-below']    ,
            \ '|' : ['<C-W>v'     , 'split-window-right']    ,
            \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
            \ 'h' : ['<C-W>h'     , 'window-left']           ,
            \ 'j' : ['<C-W>j'     , 'window-below']          ,
            \ 'l' : ['<C-W>l'     , 'window-right']          ,
            \ 'k' : ['<C-W>k'     , 'window-up']             ,
            \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
            \ 'J' : ['resize +5'  , 'expand-window-below']   ,
            \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
            \ 'K' : ['resize -5'  , 'expand-window-up']      ,
            \ '=' : ['<C-W>='     , 'balance-window']        ,
            \ 's' : ['<C-W>s'     , 'split-window-below']    ,
            \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
            \ '?' : ['Windows'    , 'fzf-window']            ,
            \ }


let g:which_key_leader_map.b = {
            \ 'name' : '+buffer' ,
            \ '1' : ['b1'        , 'buffer 1']        ,
            \ '2' : ['b2'        , 'buffer 2']        ,
            \ 'd' : ['bd'        , 'delete-buffer']   ,
            \ 'f' : ['bfirst'    , 'first-buffer']    ,
            \ 'h' : ['Startify'  , 'home-buffer']     ,
            \ 'l' : ['blast'     , 'last-buffer']     ,
            \ 'n' : ['bnext'     , 'next-buffer']     ,
            \ 'p' : ['bprevious' , 'previous-buffer'] ,
            \ '?' : ['Buffers'   , 'fzf-buffer']      ,
            \ }



let g:which_key_localleader_map.g = {
            \'name':'+git',
            \'d':['Gdiff','git diff'],
            \'p':['GitP','git push'],
            \'s':['Gstatus', 'git status'],
            \}




" ============注释=================================
" nerdcommenter
" ==================================================
nmap <localleader>cc <Space>cc
nmap <localleader>cu <Space>cu
nmap <localleader>c, <Space>c,
nmap <localleader>ca <Space>ca
nmap <localleader>c<Space> <Space>c<Space>
nmap <localleader>cy <Space>cy
nmap <localleader>cs <Space>cs
nmap <localleader>cA <Space>cA


let g:which_key_localleader_map.c = {
            \ 'name' : '+comment',
            \ 'c' : '注释当前行',
            \ 'u' : '取消注释',
            \ ',' : '切换注释/非注释状态',
            \ 'a' : '切换注释样式',
            \ 'SPC' : '加上/解开注释-智能判断',
            \ 'y' : '先复制再注释',
            \ 's' : '性感的注释',
            \ 'A' : '在当前行尾添加注释符号，并进入Insert模式',
            \ }












