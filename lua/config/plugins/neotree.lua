local neotree = require "neo-tree"

local M = {}

function M.setup()
  neotree.setup({
    filesystem = {
      follow_current_file = true,
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  })
end

return M
