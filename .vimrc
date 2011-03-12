" Necesary  for lots of cool vim things
set nocompatible

syntax on           " Set syntax on
set more
set showmode
set showcmd
set laststatus=2
set hidden
hi statusline ctermbg=black
set statusline=\ %n:\ %f\ %y%r%m%h%w%<%=%v\,\ %l\/%L\,\ %3P\ 
set nu              " Turn on line numbering.
set tabstop=2       " numbers of spaces of tab character
set expandtab
autocmd FileType make set noexpandtab
set shiftwidth=2
set incsearch       " do incremental searchin
set ignorecase      " ignore case when searching 
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set scrolloff=1
set sidescrolloff=3
set foldmethod=indent
set foldlevel=99
set wildmenu
set list
set listchars=tab:>·,trail:·

" key mappings
nn <silent> <F2> <esc>:NERDTreeToggle<cr>
nn <silent> <Leader><F2> <esc>:NERDTreeFind<cr>
nn <silent> <Leader><F3> <esc>:TlistToggle<cr>
nn <silent> <F3> <esc>n
nn <silent> <F4> <esc>:BufExplorer<cr>
nn <silent> <F6> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
nn <silent> <Leader>ev :e ~/.vimrc<CR>
nn <silent> <space> za
nm ; :
nm <silent> , ;
map Q gq

" buffer switching like weechat
nn <silent> <Left> <esc>:bnext<cr>
nn <silent> <Right> <esc>:bnext<cr>
nn <silent> <Leader><Left> <esc>:bnext<cr>
nn <silent> <Leader><Right> <esc>:bnext<cr>
nn <silent> <Leader><Up> <esc><C-W><Up>
nn <silent> <Leader><Down> <esc><C-W><Down>

" Up and down are more logical with g
nn <silent> k gk
nn <silent> j gj
nn <silent> <Up> gk
nn <silent> <Down> gj

" Settings for taglist.vim
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=0
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
 
let g:bufExplorerSortBy='name'

