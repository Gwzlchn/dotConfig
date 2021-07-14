" ==================================================
" Plugin List
" ==================================================

call plug#begin('~/.config/nvim/plugged')

 " A File Explorer For Neovim Written In Lua
 Plug 'kyazdani42/nvim-web-devicons' " for file icons
 " Plug 'ryanoasis/vim-devicons'
 Plug 'kyazdani42/nvim-tree.lua'


 "  新一代全代码补全插件
 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 " Signify (or just Sy) uses the sign column to indicate added, modified and
 " removed lines in a file that is managed by a version control system (VCS)."
 if has('nvim') || has('patch-8.0.902')
   Plug 'mhinz/vim-signify'
 else
   Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
 endif


 "a light-weight and Super Fast statusline plugin.
 "  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

 " Color theme 
 " http://slinky.imukuppi.org/zenburnpage/
 " Plug 'jnurmine/Zenburn'
 " Plug 'tomasr/molokai'
 " Plug 'liuchengxu/space-vim-dark'
 Plug 'dracula/vim', { 'as': 'dracula' } 

call plug#end()
