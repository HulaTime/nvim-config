local Loader = {}

Loader.load = function(use)
  use 'mfussenegger/nvim-dap'

  -- for node ----------
  use { "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } }
  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  }
  -- -------------------
end

return Loader

