return  {
    "tpope/vim-fugitive",
    cmd = {"G", "Git"},
    keys = {
        {"<leader>gf", ":Git fetch --all -p<cr>", desc = "Git fetch"},
        {"<leader>gp", ":Git pull<cr>", desc = "Git pull"},
        {"<leader>gh", ":Git push<cr>", desc = "Git push"},
    },
}
