"------------------------------------------------------------"
"  PLUGINS  -------------------------------------------------"
"------------------------------------------------------------"
if !exists('g:vscode')
    call plug#begin()

    Plug 'https://github.com/vim-airline/vim-airline'			" Status bar
    Plug 'https://github.com/vim-airline/vim-airline-themes'	" airline theme
    Plug 'https://github.com/preservim/nerdtree'				" NerdTree
    Plug 'https://github.com/joshdick/onedark.vim' 				" colortheme

    Plug 'https://github.com/nvim-lua/plenary.nvim'				" Telescope dependencie
    Plug 'https://github.com/nvim-telescope/telescope.nvim' 	" Telescope

    call plug#end()
endif

"------------------------------------------------------------"
"  SETs -----------------------------------------------------"
"------------------------------------------------------------"

" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
  " call GuiWindowMaximized(1)
  GuiTabline 0
  GuiPopupmenu 0
  GuiLinespace 2
endif


set nocompatible    " Set 'nocompatible' to ward off unexpected things that your distro might
set cul             " Highlight current line
set cc=+1           " Put a ruler on max line width
set number          " Set numbering lines
set hidden          " Keeps every buffer inside even if not saved
set noerrorbells    " Not ring the bell for error messages
set belloff=all     " Remove all bell sounds
set smartcase       " Do a capital search only if capitals on the search
set incsearch       " Will start highlight the current search word if present on the page
set scrolloff=8     " Start scrolling the page 8line before bottom
set signcolumn=yes  " Add side column for every error/pluggin messages
let mapleader =","  " Map leader to comma
set splitright      " Will split only on the right hand side when calling a vsplit
set splitbelow      " Will split bellow when calling an horizontal split
set nowrap          " Will not wrap text after 80 lines
set tw=80           " Set the wrap column number to 80
set relativenumber  " Set the relative number for curent line
set path+=**        " Will automatically add subfolder for :find command
set wildmenu        " Better menu navigation
set ignorecase      " Use case insensitive search, except when using capital letters
set tabstop=4       " Width of tab character
set softtabstop=4   " Fine tunes the amount of white space to be added
set shiftwidth=4    " Determines the amount of whitespace to add in normal mode        
set expandtab       " When this option is enabled, vi will use spaces instead of tabsW
"------------------------------------------------------------"
" COLORSCHEME
"------------------------------------------------------------"
if !exists('g:vscode')
	colorscheme onedark
endif
"------------------------------------------------------------"
"  MAPPINGS
"------------------------------------------------------------"

"-------------   NORMAL MODE MAPPINGS -----------------------"

" CTRL+H will clear highlight on words
nnoremap <C-H> :nohl<CR>
" replace <C-F> by SPACE key to move pages
noremap <SPACE> <C-F>

if !exists("g:vs-code")
	"Mapping for window navigation
	nnoremap <M-j> <C-w>j
	nnoremap <M-k> <C-w>k
	nnoremap <M-m> <C-w>m
	nnoremap <M-l> <C-w>l
	"MAP tab movement
	nnoremap <Leader>n :tabnext<CR>
	nnoremap <Leader>b :tabprevious<CR>
	nnoremap <Leader>t :tabnew<CR>
	"Map buffer deletion clean
	nnoremap <Leader>d :bn \| bd#<CR>
	"Clean endline spaces
	nnoremap <Leader>ds :%s/\s\+$//g<CR>:nohl<CR>
endif
	" paste from clipboard
	nnoremap <Leader>p "*p

"-------------   VISUAL MODE MAPPINGS -----------------------"

set clipboard+=unnamedplus
if exists("g:vs-code")
else
	vnoremap <Leader>y "*y
	vnoremap <Leader>yy "*yy
endif
""BLOC movement
" Allow bloc indent
vnoremap < <gv
vnoremap > >gv
vnoremap * 0
"block comment
vnoremap <Leader>c :norm I
"block uncomment
" /!\ This won't work if there is no space at the begining of the line
vnoremap <Leader>cu :norm 0wdw0x<CR>

"-------------   COMMAND MAPPINGS -----------------------"

if !exists("g:vs-code")
	"map command for vertical terminal
	cnoremap vt vert term ++kill="kill" ++cols=80
endif

"------------------------------------------------------------"
"  Pluggins config
"------------------------------------------------------------"

"------------------------------------------------------------"
"Airline settings
"------------------------------------------------------------"
let g:airline_theme='deus'
let g:airline_section_c_only_filename = 1
"------------------------------------------------------------"
"Telescope settings
"------------------------------------------------------------"
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"------------------------------------------------------------"
"Nerdtree settings
"------------------------------------------------------------"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Open the existing NERDTree on each new tab.
if !exists('g:vscode')
	autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
endif
