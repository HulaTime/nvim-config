local Loader = {}

Loader.load = function(use)
  use {
    "nvim-neotest/nvim-nio"
  }

  use {
    "nvim-neotest/neotest-jest"
  }

  use {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest"
    }
  }
end

return Loader
