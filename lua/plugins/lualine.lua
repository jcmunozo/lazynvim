return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      globalstatus = true,
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      theme = "tokyonight"
    },
    sections = {
      lualine_x = {
        'encoding',
        'filetype',
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
          color = { fg = "#3fc5b7" },
        },
      },
    },
    inactive_winbar = {
      lualine_c = {"filename"},
    },
  },
}
