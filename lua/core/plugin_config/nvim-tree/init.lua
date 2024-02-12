vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  filters = {
    git_ignored = false,
    dotfiles = false,
    git_clean = false,
    no_buffer = false,
    no_bookmark = false,
    custom = {},
    exclude = {},
  },
  -- renderer = {
  --   icons = {
  --     show = {
  --       file = false
  --       folder = false
  --       folder_arrow = false
  --       git = false -- see renderer.icons.git_placement
  --       modified = false -- see renderer.icons.modified_placement
  --       diagnostics = false
  --       bookmarks = false -- see renderer.icons.bookmark_placement
  --     }
  --   }
  -- }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
