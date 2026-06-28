-- nvim-treesitter rama `main` (compatible con Neovim 0.12).
-- La rama `master` quedó deprecada y NO soporta 0.12.
local ensure_installed = {
  "elixir",
  "eex",
  "heex",
  "erlang",
  "lua",
  "html",
  "javascript",
  "java",
  "css",
  "python",
  "htmldjango",
  "luadoc",
  "latex",
  "bibtex",
  "markdown",
  "markdown_inline",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false, -- la rama main no soporta lazy-loading
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      -- Instala (si faltan) los parsers de la lista.
      require("nvim-treesitter").install(ensure_installed)

      -- Activa highlight + indent por filetype.
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local ft = vim.bo[args.buf].filetype
          local lang = vim.treesitter.language.get_lang(ft)
          if not lang then
            return
          end
          -- pcall: si el parser aún no está instalado, no rompe.
          if not pcall(vim.treesitter.start, args.buf, lang) then
            return
          end
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    config = function()
      require("nvim-treesitter-textobjects").setup({
        select = { lookahead = true },
      })

      local select = require("nvim-treesitter-textobjects.select")
      local maps = {
        ["af"] = "@function.outer", -- v af / d af ...
        ["if"] = "@function.inner",
        ["ac"] = "@conditional.outer",
        ["ic"] = "@conditional.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
      }
      for key, query in pairs(maps) do
        vim.keymap.set({ "x", "o" }, key, function()
          select.select_textobject(query, "textobjects")
        end)
      end
    end,
  },
}
