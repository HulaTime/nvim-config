local Loader = {}

Loader.load = function(use)
  use {
    'NeogitOrg/neogit',
    requires = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true
  }
  return Loader
end

return Loader
