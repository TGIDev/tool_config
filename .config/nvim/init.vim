
" -----------------------------------------"
" USER ADDED CONFIG
" -----------------------------------------"
" --- SUMMAR ---
"   1. Plugin intstall  
"   2. SETs 
"   3. CONFIG FOR FILES
"   4. BACKUP DIR 
"   5. PLUGIN CONFIG
"       5.1 NERcommenter
"       5.2 Nerdtree settings
"       5.3 Airline settings
"       5.4 CTRLP

"------------------------------------------------------------"
"  1. Plugin intstall
"------------------------------------------------------------"

call plug#begin()
    " Appearance
    Plug 'https://github.com/joshdick/onedark.vim' 				" colortheme
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'https://github.com/vim-airline/vim-airline-themes'		" airline theme

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    
    Plug 'https://github.com/joshdick/onedark.vim' 				" colortheme
    Plug 'https://github.com/preservim/nerdtree'				" NerdTree
    Plug 'preservim/nerdcommenter'
    
    Plug 'https://github.com/kien/ctrlp.vim'                    " Project finder

    " Completion / linters / formatters
"    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'} "TOCONFIGURE
"    Plug 'plasticboy/vim-markdown'                                        "TOCONFIGURE

    " Git
    Plug 'https://github.com/tpope/vim-fugitive'        "Git integration
    Plug 'airblade/vim-gitgutter'
call plug#end()


"------------------------------------------------------------"
"  2. SETs 
"------------------------------------------------------------"

set nocompatible    " Set 'nocompatible' to ward off unexpected things that your distro might
set cul             " highlight current line
set cc=+1           " put a ruler on max line width
set number          " set numbering lines
set hidden          " keeps every buffer inside even if not saved
set noerrorbells    " not ring the bell for error messages
set smartcase       " do a capital search only if capitals on the search
set incsearch       " will start highlight the current search word if present on the page
set scrolloff=8     " start scrolling the page 8line before bottom
set signcolumn=yes  " add side column for every error/pluggin messages
let mapleader =","  " map leader to comma
set splitright      " will split only on the right hand side when calling a vsplit
set splitbelow      " will split bellow when calling an horizontal split
"set tw=80           " set the wrap column number to 80
set nowrap          " will not wrap text after 80 lines
set relativenumber  " set the relative number for curent line
set belloff=all     " remove all bell sounds
set path+=**        " will automatically add subfolder for :find command
set wildmenu        " Display command line’s tab complete options as a menu
set lazyredraw      " don't update screen for every macro occurence
set ignorecase
set smartcase
set encoding=utf-8
set foldmethod=indent   "Fold based on indention levels.
set foldnestmax=3       "Only fold up to three nested levels.
set nofoldenable        "Disable folding by default.
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set smartindent
set clipboard=unnamedplus   " enables the clipboard between Vim/Neovim and other applications.
" set t_Co=256                " Enable 256 bits colors

set background=dark
colorscheme onedark

"------------------------------------------------------------"
"  3. CONFIG FOR FILES
"------------------------------------------------------------"
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
filetype on
" Enable syntax highlighting
syntax on


"-------------------------------------------------------------"
"   4. BACKUP DIR 
"CAUTION : THIS HAVE TO BE ADAPTED TO THE SYTEM TYPE
"-------------------------------------------------------------"
if has("win32")
  set backup
  " the // at the end means to use path in file name like
  " Users%tgiol%tmp%myfile.txt.swp
  set backupdir=C:\\Temp//
  set dir=C:\\Temp//
  set undodir=C:\\Temp//
else
  set backup
  " tell vim where to put its backup files
  set backupdir=~/vimbackupdir/
  " tell vim where to put swap files
  set dir=~/vimbackupdir/
  set undodir=~/vimbackupdir/
endif
"------------------------------------------------------------"
"   5. PLUGIN CONFIG
"------------------------------------------------------------"
"------------------------------------------------------------"
"   5.1 NERcommenter
"------------------------------------------------------------"
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
"------------------------------------------------------------"
"   5.2 Nerdtree settings
"------------------------------------------------------------"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Open the existing NERDTree on each new tab.
if !exists('g:vscode')
	autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
endif

"------------------------------------------------------------"
"   5.3 Airline settings
"------------------------------------------------------------"
let g:airline_theme='deus'
let g:airline_section_c_only_filename = 1

"------------------------------------------------------------"
"   5.4 CTRLP
"------------------------------------------------------------"
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
