require("core.plugin_config.neotest.keymaps")

require("neotest").setup({
  adapters = {
    require("neotest-jest")({
      jestCommand = 'npm test --',
      cwd = function(path)
        return vim.fn.getcwd()
      end,
      -- Uncomment and adjust the following lines as needed
      -- jestConfigFile = "jest.config.ts",
      -- env = { CI = true },
    }),
  },
})
