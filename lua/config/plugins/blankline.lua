local ibl = require "ibl"

vim.opt.list = true

local M = {}

function M.setup()
  ibl.setup({
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
  })
end

return M
