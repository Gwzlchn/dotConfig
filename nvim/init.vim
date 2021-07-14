let mapleader = ";"
set nocompatible

filetype off

" Plugin List ( 插件列表 ) {
  if filereadable(expand("~/.config/nvim/plugin-list.vim"))
    source ~/.config/nvim/plugin-list.vim 
  endif
" }

" Plugin Config ( 插件配置 ){
 if filereadable(expand("~/.config/nvim/config/bundles.config.vim"))
    source ~/.config/nvim/config/bundles.config.vim
 endif
" }

" HotKey Settings ( 自定义快捷键设置 ) {
  if filereadable(expand("~/.config/nvim/config/hotkey.vim"))
    source ~/.config/nvim/config/hotkey.vim
  endif
" }


" Definition Function ( 定义函数 ){
  " 返回当前时期
  func! GetDateStamp()
    return strftime('%Y-%m-%d %H:%M:%S')
  endf
" }


" General Settings ( 基础设置 ) {
" 自动检测文件类型, 基于文件类型的插件生效, 智能缩进
  filetype plugin indent on

  " 保证语法高亮
  "if has("syntax")
    syntax enable
    syntax on
  "endif

  " 保留历史记录的存储容量
  set history=500

  " 当正在编辑的文件被外部的其它程序修改后自动加载
  set autoread

  " 高亮search命中的文本
  set hlsearch
  " 打开增量搜索模式,随着键入即时搜索
  set incsearch
  " 设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
  set ignorecase
  " 有一个或以上大写字母时仍大小写敏感
  set smartcase

  " 设置魔术匹配控制，可以通过:h magic查看更详细的帮助信息
  set magic

  " 高亮显示匹配的括号，插入括号时，短暂地跳转到匹配的对应括号
  set showmatch
  set matchtime=2 " 匹配括号高亮的时间（单位是十分之一秒）

  " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
  " 'n' 普通模式  
  " 'v' 可视模式  
  " 'i' 插入模式  
  " 'c' 命令行模式  
  " 'h' 编辑帮助文件时,所有前面的模式  
  " 'a' 所有前面的模式  
  " 'r' hit-enter 和 more-prompt 提示时
  if has('mouse')
   " set mouse=a
   set mouse=n
  endif

  " 不备份文件（根据自己需要取舍）
  "  set nobackup   " 不备份文件（根据自己需要取舍）

  " 不生成swap文件，当buffer被丢弃的时候隐藏它
  "  set noswapfile " 不生成swap文件，当buffer被丢弃的时候隐藏它

  " 当前正在缓冲区但文件内容变化，自动加载变化之后的内容
  " set autoread | au CursorHold,FocusGained,BufEnter * checktime | call feedkeys("lh")
  set autoread | au CursorHold,FocusGained,BufEnter * checktime
" }


" Display Settings ( 显示设置 ) {
  " 左下角显示当前模式
  set showmode

  " 显示行号
  set number

  " 显示当前的行号列号
  set ruler

  " 行控制
  set linebreak     " 使英文单词在换行时不被截断
"  set textwidth=500 " 每行的字符数，光标超过 500 列的时候折行
  set linespace=10   " 行间距
  set wrap          " 自动换行

  " 标签页
  set tabpagemax=9  " 可打开的标签数
  set showtabline=1 " 是否显示标签栏，0: 不显示，1: 默认设置，在创建标签页后才显示，2: 总是显示

  " 状态栏显示目前所执行的指令
  set showcmd

  " 在上下移动光标时，光标的上方或下方至少会保留显示的行数
  set scrolloff=5

  " 高亮光标所在的行
  set cursorline

  " 高亮光标所在的列
  " set cursorcolumn
" }


" Formatting ( 格式化 ){
  " 制表符
  set tabstop=2       " 设定 tab 长度为 2 空格
  set expandtab       " 按 tab 键插入空格
  set smarttab        " 根据文件中其他地方的缩进空格个数来确定一个 tab 是多少个空格
  set shiftwidth=2    " 设定 << 和 >> 命令移动时的宽度为 2
  set softtabstop=2   " 按退格键一次删掉 2 个空格

  " 缩进
  set autoindent " 继承前一行的缩进方式，特别适用于多行注释
  set smartindent " 比autoindent稍智能的自动缩进
" }


" FileEncode Settings ( 文件编码 ) {
  " 设置新文件的编码为 UTF-8
  set encoding=utf-8

  " 自动判断编码时，依次尝试以下编码：
  set fileencodings=utf-8,gbk,chinese,latin1

  " 如遇Unicode值大于255的文本，不必等到空格再折行
  set formatoptions+=mM

  " 合并两行中文时，不在中间加空格
  set formatoptions+=B
" }

" Color Scheme ( 配色方案 ) {
  set background=dark

  " 开启256色支持
  set t_Co=256

  " 编辑器配色
  " colorscheme zenburn
  " colorscheme molokai
   colorscheme dracula

 "  set guifontwide=Monaco\ for\ Powerline:h18

  " 各不同类型的文件配色不同
" }



