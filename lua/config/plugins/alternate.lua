local alternate = require "alternate-toggler"

local M = {}

function M.setup()
  alternate.setup {
    alternates = {
      ["=="] = "!=",
    },
    vim.keymap.set(
      "n",
      "<leader><space>", -- <space><space>
      "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>"
    )
  }
end

return M
