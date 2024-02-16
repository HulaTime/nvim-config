local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Functions that everything says you should have :shrug
  use "nvim-lua/plenary.nvim"

  -- File explorer
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons' -- requires a nerdfont to be installed https://www.nerdfonts.com/

  -- Builds lexical tree (ast) for language parsing and highlighting etc.
  use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

  -- Fuzzy find stuff, requires ripgrep to be installed on system for greping
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Cos primeagen plugs his shit and it might actually be decent
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

  -- undotree for branching change history that we can jump to
  use 'mbbill/undotree'

  -- Git management
  use 'tpope/vim-fugitive'

  -- LSP (using lsp zero for now)
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }
  }

  use 'dense-analysis/ale'

  -- Neotest!! it's not time yet
  -- remember to require specific test runners
  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest"
    }
  }

  -- Starting with vim test since it looks pretty decent
  use {
    'vim-test/vim-test',
    config = function()
      vim.cmd([[
      let test#strategy = 'neovim'
      ]])
    end
  }

  -- Themes
  use { 'ribru17/bamboo.nvim', as = 'bamboo-theme' }
  use { "catppuccin/nvim", as = "catppuccin-theme" }
  use {
    'xiantang/darcula-dark.nvim',
    requires = { "nvim-treesitter/nvim-treesitter" }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end
)
