return {
  "lervag/vimtex",
  ft = { "tex", "latex", "plaintex" },
  init = function()
    -- PDF viewer used by `<leader>lv` (VimtexView). Change if you don't use zathura.
    vim.g.vimtex_view_method = "zathura"
    -- Compile with latexmk (default); set the build dir to keep the source tree clean.
    vim.g.vimtex_compiler_method = "latexmk"
    -- Don't open the quickfix window automatically on warnings.
    vim.g.vimtex_quickfix_mode = 0
  end,
  keys = {
    { "<leader>ll", "<cmd>VimtexCompile<cr>", desc = "LaTeX Compile (toggle)" },
    { "<leader>lv", "<cmd>VimtexView<cr>", desc = "LaTeX View PDF" },
    { "<leader>lk", "<cmd>VimtexStop<cr>", desc = "LaTeX Stop Compile" },
    { "<leader>lc", "<cmd>VimtexClean<cr>", desc = "LaTeX Clean aux files" },
    { "<leader>lt", "<cmd>VimtexTocToggle<cr>", desc = "LaTeX Table of Contents" },
  },
}
