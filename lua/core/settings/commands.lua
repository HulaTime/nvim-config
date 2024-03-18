vim.api.nvim_create_user_command(
  'Xd', -- Command name
  function()
    vim.cmd('w') -- Execute :x to save and quit the buffer
    vim.cmd('bd') -- Execute :bd to delete the buffer
  end,
  {}
)
