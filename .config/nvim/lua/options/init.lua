vim.cmd('filetype plugin indent on')

-- Encoding
vim.o.encoding = 'utf-8'

-- Theme and styling
vim.opt.termguicolors = true
vim.opt.guifont = "Fira Code:h14"
vim.cmd[[
colorscheme embark
highlight CursorLine ctermfg=black
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
]]
vim.o.cursorline = true
vim.o.cmdheight = 1
vim.o.laststatus = 2
vim.opt.fillchars = "vert:|"

-- Line numbers
vim.o.relativenumber = true
vim.o.number = true
vim.o.ruler = true
vim.o.startofline = false
vim.wo.signcolumn = "yes"

-- Leader 
vim.g.mapleader = " "

-- Spell checking
vim.o.spell = false

-- Search
vim.o.hlsearch = true
vim.o.ignorecase = true

-- Scroll
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5

-- Wrapping
vim.wo.wrap = false

-- Tabs
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.smarttab = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true

-- Set swap and undo directories
-- vim.o.directory = '$HOME/.vim/swp'
-- vim.o.backupdir = '$HOME/.vim/.backup'
-- vim.o.undofile = true
-- vim.o.undodir = '$HOME/.vim/undodir'
vim.o.clipboard = 'unnamedplus'
-- vim.o.mouse = ''

-- Splits below and right
vim.o.splitbelow = true
vim.o.splitright = true
