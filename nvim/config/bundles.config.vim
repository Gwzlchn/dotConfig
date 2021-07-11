" ==================================================
" 插件配置
" Plugin Config
" ==================================================



" mileszs/ack.vim {
  if filereadable(expand("~/.config/nvim/config/ack.config.vim"))
    source ~/.config/nvim/config/ack.config.vim
  endif
"}

" kyazdani42/nvim-tree.lua {
  if filereadable(expand("~/.config/nvim/config/nvim-tree.config.vim"))
    source ~/.config/nvim/config/nvim-tree.config.vim
  endif
" }

" coc.vim {
  if filereadable(expand("~/.config/nvim/config/coc.config.vim"))
    source ~/.config/nvim/config/coc.config.vim
  endif
"}
