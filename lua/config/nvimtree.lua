local g = vim.g

g.nvim_tree_indent_markers = 1
g.nvim_tree_side = "left"
g.nvim_tree_indent_markers = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_root_folder_modifier = ":t"
g.nvim_tree_allow_resize = 1
g.nvim_tree_git_hl = 0

g.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1
}

g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★",
        deleted = "",
        ignored = "﯏"
    },
    folder = {
        default = "",
        open = "",
        symlink = "",
        empty = "",
        empty_open = "",
        symlink_open = ""
    }
}
-- Mappings for nvimtree
-- :au! BufEnter if &buftype == 'NvimTree' | setloca endif
vim.api.nvim_set_keymap(
    "n",
    "<leader>n",
    ":NvimTreeToggle<CR>",
    {
        noremap = true,
        silent = true
    }
)

require'nvim-tree'.setup {
    view = {
        width = 25,
        side = 'left'
    },
    filters = {
        dotfiles = false,
        custom = { ".git", "node_modules", ".cache", "__pycache__" }
    },
}
