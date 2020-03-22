" 插件设置，这里使用了vim-plug
call plug#begin('~/.vim/plugged')
" 安装插件只需要把 github 地质放到这里重启后执行 :PlugInstall 就好了
" 修改启动界面
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
" 状态栏美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 增加代码缩进条
Plug 'yggdroot/indentline'
" 主题配色
Plug 'morhetz/gruvbox'
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" 搜索插件
Plug 'ctrlpvim/ctrlp.vim'
" 快速定位文件位置
Plug 'easymotion/vim-easymotion'
" 编辑成双成对
Plug 'tpope/vim-surround'
" 批量替换
Plug 'brooth/far.vim'

Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" 代码格式化
Plug 'sbdchd/neoformat'
" 静态检查
Plug 'w0rp/ale'
" 快速注释代码
Plug 'tpope/vim-commentary'
" vim+git
Plug 'tpope/vim-fugitive'
" 在 vim 里显示文件变动
Plug 'airblade/vim-gitgutter'
" 在命令行查看提交记录
Plug 'junegunn/gv.vim'
call plug#end()

" 常用设置
" 设置行号
set number
syntax on
colorscheme gruvbox
set background=dark
" 按F2 进入粘贴模式
set pastetoggle=<F2>
" 高亮搜索
set hlsearch
" 设置折叠方式
" set foldmethod=indent

" 一些方便的映射
let mapleader=','
let g:mapleader=','

" normal
nnoremap - x
nnoremap <space> viw
" 切换 buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>
nnoremap <c-d> dd
" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" visual
vnoremap \ U

" insert
inoremap <c-d> <Esc>ddi
" 使用 jj 进入 normal 模式 
inoremap jj <Esc>
" 使用 leader+w 直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null
" json formatted
com! FormatJSON %!python3 -m json.tool

" 插件相关配置
" 禁止 startify 自动切换目录
let g:startify_change_to_dir = 0

" nerdtree
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
	    \ '\.git$', '\.hg$', '\.svn$', '\.swp$',
	    \ ]
let g:ctrlp_map = '<c-p>'

" easymotion
nmap ss <Plug>(easymotion-s2)

" vim-go
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" python-mode
let g:pymode_python = 'python3'
let g:pymode_trim_whitespaces = 1
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_options_max_line_length = 120

" tagbar
nnoremap <leader>t :TagbarToggle<CR>

" deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview

set updatetime=100 " 100ms
