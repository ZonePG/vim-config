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
