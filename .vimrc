syntax on           " Set syntax on
set more
set showmode
set showcmd
set laststatus=2
set hidden
set statusline=\ %n:\ %f\ %y%r%m%h%w%<%=%v\,\ %l\/%L\,\ %3P\ 
set nu              " Turn on line numbering.
set tabstop=2       " numbers of spaces of tab character
set expandtab
set shiftwidth=2
set incsearch       " do incremental searchin
set ignorecase      " ignore case when searching 
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set scrolloff=1
set sidescrolloff=3

"key mappings
nmap <F2> <esc>:NERDTreeToggle<cr>
nmap <M-F3> <esc>:TlistToggle<cr>
nmap <F3> <esc>n
nmap <F4> <esc>:BufExplorer<cr>

" Settings for taglist.vim
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
 
let g:bufExplorerSortBy='name'

