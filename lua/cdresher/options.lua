local g   = vim.g
local o   = vim.o
local opt = vim.opt
local A   = vim.api

o.termguicolors = true
-- o.background = 'dark'
vim.cmd "colorscheme tokyonight-moon"

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 2
o.relativenumber = false
o.signcolumn = 'yes'
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

opt.mouse = "a"

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '

--map escape to normal mode from terminal mode to esc key
A.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', { noremap = true })

-- disable netrw at the very start of your init.lua (strongly advised)
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
opt.termguicolors = true
