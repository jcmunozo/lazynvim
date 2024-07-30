return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = function()
    local function toggle_indent_guides()
      local ibl = require("ibl")
      local config = require("ibl.config").get_config(0)
      if config.enabled then
        ibl.setup_buffer(0, { enabled = false })
      else
        ibl.setup_buffer(0, { enabled = true })
      end
    end

    vim.api.nvim_set_keymap('n', '<leader>ug', '', {
      noremap = true,
      silent = true,
      callback = toggle_indent_guides
    })

    return {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = {
        show_start = false,
        show_end = false
      },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    }
  end,
  main = "ibl",
}
