" PLUGIN SETTINGS

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
"set cmdheight=2

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Enable syntax highlighting
syntax enable

colorscheme molokai
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" enable mouse use
set mouse=a
set ttymouse=xterm2

" bind f2 for paste mode
set pastetoggle=<F2>

" enable top tab line
let g:airline#extensions#tabline#enabled = 1

" enable status line to show over command line

"if has('statusline')
set laststatus=2
"set statusline=%<%f\    " Filename
"set statusline+=%w%h%m%r " Options
"set statusline+=%{fugitive#statusline()} "  Git Hotness
"set statusline+=%{virtualenv#statusline()} " virtualenv
"set statusline+=\ [%{&ff}/%Y]            " filetype
"set statusline+=\ [%{getcwd()}]          " current dir
"set statusline+=%#warningmsg#
"set statusline+=%*
"set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

"endif
" better response time from git gutter
set updatetime=250

" enable powerline font
let g:airline_powerline_fonts = 1

" enable default wombat theme
let g:airline_theme='wombat'

" create virtual env section in airline
" let g:airline_section_b = airline#section#create('%{virtualenv#statusline()}')

" create branch status line
" let g:airline_section_c = airline#section#create('%{fugitive#statusline()}')

" turn on git branch on airline
" let g:airline#extensions#branch#enabled = 1

