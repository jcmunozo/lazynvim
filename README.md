# Neovim Config

Personal Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager. Everything is written in Lua, organized into configuration and plugin layers.

## Structure

```
~/.config/nvim/
├── init.lua                  # Entry point → lua/config/init.lua
├── lua/
│   ├── config/
│   │   ├── settings.lua      # Vim options (leader = <Space>)
│   │   ├── mappings.lua      # Global keymaps
│   │   ├── autocmd.lua       # Autocommands
│   │   └── lazy.lua          # lazy.nvim bootstrap
│   └── plugins/              # One file per plugin → auto-registered
└── after/ftplugin/           # Per-filetype overrides
```

## Management Commands

| Command | Action |
|---------|--------|
| `:Lazy` | Manage plugins (install, update, clean) |
| `:Mason` | Manage LSP servers and tools |
| `:TSUpdate` | Update Treesitter parsers |
| `:G` / `:Git` | Run git commands via Fugitive |
| `:checkhealth` | Diagnose config issues |

---

## Cheatsheet

> `<leader>` = `Space`

---

### Files and Buffers

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files (Telescope) |
| `<leader>g` | Git repository files |
| `<leader>fb` | File browser |
| `<leader>pv` | File explorer (netrw) |
| `<leader>nt` | Toggle NeoTree |
| `<leader>bu` | List open buffers |
| `<leader>bd` | Close current buffer |
| `<TAB>` | Next buffer |
| `<S-TAB>` | Previous buffer |

---

### Save and Quit

| Key | Action |
|-----|--------|
| `<leader>w` | Save |
| `<leader>q` | Quit |
| `<leader>wq` | Save and quit |
| `<leader>qq` | Quit without saving (force) |
| `<leader>rr` | Reload current file |

---

### Window Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Go to left window |
| `<C-j>` | Go to window below |
| `<C-k>` | Go to window above |
| `<C-l>` | Go to right window |
| `<C-\>` | Go to previous window |
| `<M-h>` | Decrease window width |
| `<M-l>` | Increase window width |
| `<M-j>` | Decrease window height |
| `<M-k>` | Increase window height |

> `<C-hjkl>` also works across tmux panes.

---

### Search

| Key | Action |
|-----|--------|
| `<leader>h` | Search Neovim help (Telescope) |
| `<leader>k` | Browse all keymaps |
| `n` | Next result (cursor centered) |
| `N` | Previous result (cursor centered) |

---

### Editing

| Key | Action |
|-----|--------|
| `<leader>;` | Append `;` at end of line |
| `<leader>:` | Append `:` at end of line |
| `<leader><space>` | Toggle value (`true`↔`false`, `yes`↔`no`, `&&`↔`\|\|`, etc.) |
| `<` (visual) | Indent left (keeps selection) |
| `>` (visual) | Indent right (keeps selection) |
| `K` (visual) | Move block up |
| `J` (visual) | Move block down |
| `<leader>s` (visual) | Sort selection alphabetically |

---

### Folds

| Key | Action |
|-----|--------|
| `<leader>o` | Open all folds |
| `<leader>c` | Close all folds |

---

### Comments (`Comment.nvim`)

| Key | Action |
|-----|--------|
| `gcc` | Toggle line comment |
| `gbc` | Toggle block comment |

---

### Surround (`vim-surround`)

| Key | Action |
|-----|--------|
| `cs'"` | Change `'` to `"` around cursor |
| `ds"` | Delete `"` around cursor |
| `ysiw]` | Wrap word with `[]` |
| `yss(` | Wrap entire line with `()` |
| `S<tag>` (visual) | Wrap selection with an HTML tag |

---

### LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | Show references |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `<space>rn` | Rename symbol |
| `<space>ca` | Code actions |
| `<space>f` | Format file |
| `<space>D` | Go to type definition |
| `<space>e` | Show floating diagnostic |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<space>d` | Diagnostics list (loclist) |

---

### Autocompletion (`nvim-cmp`)

| Key | Action |
|-----|--------|
| `<Tab>` | Next suggestion |
| `<C-p>` | Previous suggestion |
| `<CR>` | Confirm selection |
| `<C-Space>` | Force completion |
| `<C-e>` | Close completion |
| `<C-d>` | Scroll docs up |
| `<C-u>` | Scroll docs down |

---

### Snippets (`LuaSnip`)

| Key | Action |
|-----|--------|
| `<C-k>` | Expand snippet / jump to next field |
| `<C-j>` | Jump to previous field |
| `<C-l>` | Cycle through choice nodes |

---

### Git

| Key | Action |
|-----|--------|
| `<leader>gs` | Git status (Telescope) |
| `<leader>gc` | Buffer git commits (Telescope) |
| `<leader>gb` | Git branches (Telescope) |
| `<leader>gf` | Git fetch --all |
| `<leader>gp` | Git pull |
| `<leader>gh` | Git push |

> For advanced operations: `:G <command>` (Fugitive)

---

### Treesitter — Incremental Selection

| Key | Action |
|-----|--------|
| `<leader>ss` | Start selection |
| `<leader>si` | Expand to next node |
| `<leader>sc` | Expand to scope |
| `<leader>sd` | Shrink selection |

### Treesitter — Text Objects

| Key | Action |
|-----|--------|
| `af` / `if` | Select function (outer / inner) |
| `ac` / `ic` | Select conditional (outer / inner) |
| `al` / `il` | Select loop (outer / inner) |

> Works with `v`, `d`, `c`, `y`, etc. Example: `daf` deletes the entire function.

---

### Markdown Preview (`markdown-preview.nvim`)

| Key | Action |
|-----|--------|
| `<leader>mp` | Toggle Markdown preview in the browser |

> Only available in `.md` files. Requires Node.js installed.

---

### Noice (UI)

| Key | Action |
|-----|--------|
| `<leader>snl` | Show last message |
| `<leader>snh` | Message history |
| `<leader>sna` | All messages |
| `<leader>snd` | Dismiss notifications |
| `<S-f>` | Scroll forward in LSP docs |
| `<S-b>` | Scroll backward in LSP docs |

---

### Miscellaneous

| Key | Action |
|-----|--------|
| `<leader>ug` | Toggle indent guides |
| `<leader>pl` | Browse and open plugin files |


Created with AI assistance 
