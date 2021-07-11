" ==================================================
" Plugin List
" ==================================================

call plug#begin('~/.config/nvim/plugged')

" A File Explorer For Neovim Written In Lua
Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-tree.lua'


" NERD出品的快速给代码加注释插件，选中 ctrl+h 即可注释多种语言代码
" Plug 'scrooloose/nerdcommenter'

" 用来在项目里全局搜索某个单词
Plug 'mileszs/ack.vim'

"  新一代全代码补全插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 代码格式化
" ,a=  按等号切分格式化
" ,a:  按逗号切分格式化
" Plug 'godlygeek/tabular'

" 符号自动补全
" Plug 'Raimondi/delimitMate'



" Stylus 语法
" Plug 'iloginow/vim-stylus'

" EditorConfig
" Plug 'editorconfig/editorconfig-vim'

" Color
" http://slinky.imukuppi.org/zenburnpage/
" Plug 'jnurmine/Zenburn'
" Plug 'tomasr/molokai'
" Plug 'liuchengxu/space-vim-dark'
Plug 'dracula/vim', { 'as': 'dracula' } 

call plug#end()
