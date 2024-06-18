-- toggle breakpoint
vim.keymap.set('n', '<leader>db', ":lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true })
-- list breakpoints
vim.api.nvim_create_user_command(
  'DebugBreakpointList',
  function()
    require('dap').list_breakpoints()
  end,
  {}
)
-- clear breakpoints
vim.api.nvim_create_user_command(
  'DebugBreakpointClear',
  function()
    require('dap').clear_breakpoints()
  end,
  {}
)
-- continue execution
vim.keymap.set('n', '<leader>dc', ":lua require('dap').continue()<CR>", { noremap = true, silent = true })
-- step over
vim.keymap.set('n', '<leader>dso', ":lua require('dap').step_over()<CR>", { noremap = true, silent = true })
-- step into
vim.keymap.set('n', '<leader>dsi', ":lua require('dap').step_into()<CR>", { noremap = true, silent = true })
-- toggle the repl inspection window
vim.keymap.set('n', '<leader>do', ":lua require('dap').repl.toggle()<CR>", { noremap = true, silent = true })
-- close the current sesssion without terminating it
vim.keymap.set('n', '<leader>dxc', ":lua require('dap').repl.toggle()<CR>", { noremap = true, silent = true })
-- terminate the current session
vim.keymap.set('n', '<leader>dxt', ":lua require('dap').repl.toggle()<CR>", { noremap = true, silent = true })
-- list active sessions
vim.keymap.set('n', '<leader>dxl', ":lua require('dap').repl.toggle()<CR>", { noremap = true, silent = true })
