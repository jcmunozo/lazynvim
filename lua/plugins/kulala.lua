return {
  "mistweaverco/kulala.nvim",
  ft = { "http", "rest" },
  opts = {
    -- Default configuration; see :h kulala or the README for all options.
    global_keymaps = false,
  },
  keys = {
    {
      "<leader>rs",
      function()
        require("kulala").run()
      end,
      desc = "Kulala Send Request",
    },
    {
      "<leader>rk",
      function()
        require("kulala").jump_prev()
      end,
      desc = "Kulala Prev Request",
    },
    {
      "<leader>rj",
      function()
        require("kulala").jump_next()
      end,
      desc = "Kulala Next Request",
    },
    {
      "<leader>rb",
      function()
        require("kulala").scratchpad()
      end,
      desc = "Kulala Scratchpad",
    },
    {
      "<leader>rt",
      function()
        require("kulala").toggle_view()
      end,
      desc = "Kulala Toggle View (body/headers)",
    },
  },
}
