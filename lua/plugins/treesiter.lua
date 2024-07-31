return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  build = ":TSUpdate",
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "lua",
      "html",
      "javascript",
      "css",
      "python",
      "htmldjango",
      "luadoc"
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<leader>ss",
        node_incremental = "<leader>si",
        scope_incremental = "<leader>sc",
        node_decremental = "<leader>sd",
      }
    },
    autotag = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = {query = "@function.outer", desc = "Select outer part of a function region"}, -- v(visual) af or d(delete) af ...
          ["if"] = {query = "@function.inner", desc = "Select inner part of a function region"},
          ["ac"] = {query = "@conditional.outer", desc = "Select outer part of a conditional region"},
          ["ic"] = {query = "@conditional.inner", desc = "Select inner part of a conditional region"},
          ["al"] = {query = "@loop.outer", desc = "Select outer part of a loop region"},
          ["il"] = {query = "@loop.inner", desc = "Select inner part of a loop region"},
        }
      },
    },
  },
}
