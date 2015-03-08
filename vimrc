set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugins
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'rking/ag.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()            " required
filetype plugin indent on    " required


let mapleader = " "

set number

set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set backspace=2

set ignorecase
set smartcase
set incsearch

set nobackup
set noswapfile


" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·


" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1


" for tmux
" http://stackoverflow.com/questions/6427650/vim-in-tmux-background-color-changes-when-paging
set t_ut=


colorscheme Tomorrow-Night


" shortcut
map <C-n> :NERDTreeToggle<CR>


" Trigger configuration for ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
