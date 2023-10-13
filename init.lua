
-- -------------------------------------------
-- USER ADDED CONFIG
-- -------------------------------------------
-- --- SUMMAR ---
--   1. Plugin intstall
--   2. SETs
--   3. MAPPINGS
--       3.1 NORMAL MODE MAPPINGS
--       3.2 VISUAL MODE MAPPINGS
--       3.3 COMMAND MODE MAPPINGS
--   4. SNIPPETS
--   5. CONFIG FOR FILES
--   6. BACKUP DIR
--   7. PLUGIN CONFIG
--       6.1 NERcommenter
--       6.2 Nerdtree settings
--       6.3 Airline settings
--       6.4 CTRLP

---------------------------------------------------------------
--  1. Plugin intstall
---------------------------------------------------------------

----------------------------------------------------------------
--  2. SETs
----------------------------------------------------------------

vim.opt.compatible = false    -- Set 'nocompatible' to ward off unexpected things that your distro might
vim.opt.cul = true             -- highlight current line
-- set cc=+20          -- put a ruler on max line width
vim.opt.number  = true          -- set numbering lines
vim.opt.hidden  = true          -- keeps every buffer inside even if not saved
vim.opt.errorbells = false    -- not ring the bell for error messages
vim.opt.smartcase   = true       -- do a capital search only if capitals on the search
vim.opt.incsearch   = true       -- will start highlight the current search word if present on the page
vim.opt.=20    -- start scrolling the page 8line before bottom
vim.opt.signcolumn=yes  -- add side column for every error/pluggin messages
vim.g.mapleader =','  -- map leader to comma
vim.opt.splitright  = true      -- will split only on the right hand side when calling a vsplit
vim.opt.splitbelow  = true      -- will split bellow when calling an horizontal split
vim.opt.textwidth=0     -- prevent auto wrapping--
vim.opt.wrapmargin=0    -- prevent auto wrapping--
vim.opt.tw=0           -- set the wrap column number to 80
vim.opt.relativenumber  = true  -- set the relative number for curent line
vim.opt.belloff=all     -- remove all bell sounds
vim.opt.path+=**        -- will automatically add subfolder for :find command
vim.opt.wildmenu    = true        -- Display command line’s tab complete options as a menu
vim.opt.lazyredraw  = true      -- don't update screen for every macro occurence
vim.opt.ignorecase  = true
vim.opt.smartcase   = true
vim.opt.encoding=utf-8
vim.opt.foldmethod=indent   --Fold based on indention levels.
vim.opt.foldnestmax=3       --Only fold up to three nested levels.
vim.opt.foldenable = false        --Disable folding by default.
vim.opt.listchars=space:.   --set replaced chat for non visible one. Acticate with set list or set nolist
vim.opt.tabstop     =4
vim.opt.softtabstop =4
vim.opt.shiftwidth  =4
vim.opt.expandtab   = true
vim.opt.smartindent = true
vim.opt.clipboard=unnamedplus   -- enables the clipboard between Vim/Neovim and other applications.
vim.opt.t_Co=256                -- Enable 256 bits colors
vim.opt.wrap = false          -- will not wrap text after 80 lines

vim.opt.termguicolors   = true

-- force cursor in line for insert mode and block for the rest
--let &t_SI = "\e[6 q"
--let &t_EI = "\e[2 q"

vim.opt.background=dark
colorscheme nord
----------------------------------------------------------------
--   3. MAPPINGS
----------------------------------------------------------------

local function map(kind, lhs, rhs, opts)
  vim.api.nvim_set_keymap(kind, lhs, rhs, {noremap=true})
end

--
----------------------------------------------------------------
--   3.1 NORMAL MODE MAPPINGS
----------------------------------------------------------------

--
-- CTRL+H will clear highlight on words
map('','<C-H>', ':nohl<CR>')
-- replace <C-F> by SPACE key to move pages
map('','<SPACE>', '<C-F>')
--Mapping for window navigation
map('n','<M-j>','<C-w>j')
map('n','<M-k>','<C-w>k')
map('n','<M-m>','<C-w>m')
map('n','<M-l>','<C-w>l')
--MAP tab movement
map('n','<Leader>n',':tabnext<CR>')
map('n','<Leader>b',':tabprevious<CR>')
map('n','<Leader>t',':tabnew<CR>')
--Map buffer deletion clean
map('n','<Leader>d',':bn \| bd#<CR>')
--Clean endline spaces
map('n','<Leader>ds',':%s/\s\+$//e<CR>:nohl<CR>')
-- paste from clipboard
map('n','<Leader>p','"*p')
--Replace Word under cursor
map('','<F3>', ':%s/\<<C-r><C-w>\>/')
-- Vimgrep shortcut
noremap <F4> :execute --noautocmd vimgrep /".expand("<cword>")."/j **" <Bar> cw<CR>
if has("win32") then
    -- Same with SystemVerilog files
    map('','<F5>sv',:'execute "noautocmd vimgrep /" . expand("<cword>") . "/j **\*.sv" <Bar> cw<CR>')
    -- Same with python files
    map('','<F5>py',:'execute "noautocmd vimgrep /" . expand("<cword>") . "/j **\*.py" <Bar> cw<CR>')
else
    -- Same with SystemVerilog files
    map('','<F5>sv',:'execute "noautocmd vimgrep /" . expand("<cword>") . "/j **/*.sv" <Bar> cw<CR>')
    -- Same with python files
    map('','<F5>py',:'execute "noautocmd vimgrep /" . expand("<cword>") . "/j **/*.py" <Bar> cw<CR>')
end

----------------------------------------------------------------
--   3.2 VISUAL MODE MAPPINGS
----------------------------------------------------------------


----------------------------------------------------------------
--   3.3 COMMAND MAPPINGS -------------------------
----------------------------------------------------------------


----------------------------------------------------------------
--  4. SNIPPETS
----------------------------------------------------------------


----------------------------------------------------------------
--  5. CONFIG FOR FILES
----------------------------------------------------------------


-----------------------------------------------------------------
--   6. BACKUP DIR
--CAUTION : THIS HAVE TO BE ADAPTED TO THE SYTEM TYPE
-----------------------------------------------------------------
----------------------------------------------------------------
--   7. PLUGIN CONFIG
----------------------------------------------------------------
----------------------------------------------------------------
--   7.1 NERcommenter
----------------------------------------------------------------

----------------------------------------------------------------
--   7.2 Nerdtree settings
----------------------------------------------------------------
----------------------------------------------------------------
--   7.3 Airline settings
----------------------------------------------------------------

----------------------------------------------------------------
--   7.4 CTRLP
----------------------------------------------------------------
