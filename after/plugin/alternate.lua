local alternate = require "alternate-toggler"

alternate.setup {
  alternates = {
    ["=="] = "!=",
  },
  vim.keymap.set(
    "n",
    "<leader><space>",   -- <space><space>
    "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>"
  )
}
