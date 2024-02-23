-- variables
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}
local set = vim.keymap.set

-- file option
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>wq", ":wq<CR>", opts)
map("n", "<leader>qq", ":q!<CR>", opts)

-- back to the files
set('n', '<leader>pv', vim.cmd.Ex, {desc = "Open file explorer" })

-- ;:
map("n", "<leader>;", "$a;<Esc>", opts)
map("n", "<leader>:", "$a:<Esc>", opts)

-- Delete current buffer
map("n", "<leader>bd", ":bd<CR>", opts)

-- Sort a list alphabetically
map("v", "<leader>s", ":!sort<CR>", opts)

-- Use alt + hjkl to resize windows
map("n", "<M-j>", ":resize -2<CR>", opts)
map("n", "<M-k>", ":resize +2<CR>", opts)
map("n", "<M-h>", ":vertical resize -2<CR>", opts)
map("n", "<M-l>", ":vertical resize +2<CR>", opts)

-- Terminal
--map("t", "<Esc>", "<C-\><C-n>", opts)

-- Better tabbing
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Moves blocks of code in visual mode or V-Line
-- shift K or shift J
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Betther window navigation
map("n","<C-h>", "<C-w>h", opts)
map("n","<C-j>", "<C-w>j", opts)
map("n","<C-k>", "<C-w>k", opts)
map("n","<C-l>", "<C-w>l", opts)

-- TAB to move beetwen bufers
map("n", "<TAB>", ":bnext<CR>", opts)
map("n", "<S-TAB>", ":bprevious<CR>", opts)

-- descompact method
map("n", "<leader>o", "zR", opts)
map("n", "<leader>c", "zM", opts)

-- resource current file
set('n', '<leader>rr', ':source %<cr>', { desc = "Source the current file" })

-- cursor in the middle on the search mode
set('n', 'n', 'nzzzv', { desc = "Goes to the next result on the search and put the cursor in the middle"})
set('n', 'N', 'Nzzzv', { desc = "Goes to the prev result on the search and put the cursor in the middle"})
