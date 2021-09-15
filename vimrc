"highlight Pmenu ctermfg=3 ctermbg=6
"highlight PmenuSel ctermfg=3 ctermbg=15

set number relativenumber
"autocmd FileType *hs set nonumber norelativenumber
set encoding=utf-8
syntax enable
"inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
set tabstop=2 
set softtabstop=2
set expandtab
set smarttab
set shiftwidth=2
set autoindent
set colorcolumn=80

"   "set cursorline
" vim plug ensure installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set hlsearch
set wildmenu
call plug#begin()
"Plug 'shime/vim-livedown'
Plug 'mattn/emmet-vim'
Plug 'ackyshake/VimCompletesMe'
Plug 'gko/vim-coloresque'
Plug 'dense-analysis/ale'
"Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
call plug#end()

" let g:livepreview_use_biber = 1
" let g:livepreview_previewer = 'firefox'
" let g:livepreview_compiler = 'pdflatex'
autocmd FileType html let g:user_emmet_leader_key=','

"set background=dark

"colorscheme morning
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

