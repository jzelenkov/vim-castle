" Use solarized dark theme
set background=dark
colorscheme solarized

" We are running Vim, not Vi
set nocompatible

" Enable syntax highlighting
syntax on

" Use the OS clipboard by default
set clipboard=unnamed

" Enhance command-line completion
set wildmenu

" Enable filetype-specific indenting and plugins
filetype plugin indent on

" Show the best match so far as search strings are typed
set incsearch

" Highlight search results once found
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight the current line the cursor is on
set cursorline

" Flashes matching brackets or parentheses
set showmatch

" Helps with backspacing because of expandtab
set smarttab

" Don't add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don't create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" When scrolling off-screen do so 3 lines at a time, not 1
set scrolloff=3

" Enable line numbers
set number

" Nice statusbar
set laststatus=2
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&fileformat}] " file format
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" Enable setting title
set title

" Configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Make backspace work in insert mode
set backspace=indent,eol,start

" Enable US English dictionary
set spelllang=en_us

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Don't reset cursor to start of line when moving around
set nostartofline

" Show the cursor position
set ruler

" Don't show the intro message
set shortmess=atI

" Show the current mode
set title

" Show the partial command as it is being typed
set showcmd

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

