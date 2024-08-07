return {
  'rmagatti/alternate-toggler',
  event = "VeryLazy",
  opts = {
    alternates = {
      ["=="] = "!=",
    }
  },
  config = function(_, opts)
    require("alternate-toggler").setup(opts)
    vim.keymap.set(
      "n",
      "<leader><space>",   -- <space><space>
      "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>",
      { noremap = true, silent = true }
    )
  end
}
