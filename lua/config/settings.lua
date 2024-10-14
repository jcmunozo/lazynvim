local global = vim.g

global.mapleader = " "

local set = vim.o

set.mouse = 'a'
set.number = true
set.relativenumber = true
set.hidden = true
set.lazyredraw = false --disable for issues with "noice"
set.smartindent = true
set.errorbells = false
set.wrap = false
set.swapfile = false
set.undofile = true
set.hlsearch = false
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.termguicolors = true
set.sidescrolloff = 4
set.showmode = false
set.clipboard = "unnamedplus"
set.splitbelow = true
set.splitright = true
set.autowrite = true
set.updatetime = 50
set.foldmethod = 'indent'
set.fileencoding = "utf-8"
set.numberwidth = 4
set.cursorline = true
set.cursorlineopt = "both"
set.scrolloff = 5
set.shiftwidth = 2
set.autoindent = true
set.foldenable = false
-- centering the cursor with scrolloff 999, but look not good in the end of the file
