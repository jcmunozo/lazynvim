--"Autocommand to enable Treesitter in .ex and .exs files
vim.api.nvim_create_autocmd({"BufEnter", "BufRead", "BufNewFile"}, {
  pattern = {"*.ex", "*.exs"},
  command = "TSBufEnable highlight"
})
