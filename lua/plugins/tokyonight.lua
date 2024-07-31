return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
 config = function()
    require("tokyonight").setup({
      -- Choose the style: "storm", "moon", "night", or "day"
      style = "moon",
      
      -- Enable transparency
      transparent = true,
      
      -- Terminal colors
      terminal_colors = true,
      
      -- Styles for syntax elements
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
      
      -- Disable italic for specific items
      on_highlights = function(hl, c)
        hl.DiagnosticUnnecessary = { fg = c.comment, italic = false }
      end,
      
      -- Sidebars
      sidebars = { "qf", "help" },
      
      -- Day style brightness (0-1)
      day_brightness = 0.3,
      
      -- Other options
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = false,
    })

    -- Set colorscheme
    vim.cmd[[colorscheme tokyonight]]
  end,
}
