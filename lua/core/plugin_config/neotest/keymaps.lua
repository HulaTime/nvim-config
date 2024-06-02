-- Run tests
-- run closest 
vim.keymap.set('n', '<leader>t', ":lua require(\"neotest\").run.run()<CR>")
-- run last 
vim.keymap.set('n', '<leader>tl', ":lua require(\"neotest\").run.run_last()<CR>")
-- run file 
vim.keymap.set('n', '<leader>tf', ":lua require(\"neotest\").run.run(vim.expand("%"))<CR>")

-- Toggle the test summary
vim.keymap.set('n', '<leader>ts', ":lua require(\"neotest\").summary.toggle()<CR>")
-- Open a test output
vim.keymap.set('n', '<leader>to', ":lua require(\"neotest\").output.open()<CR>")
vim.keymap.set('n', '<leader>too', ":lua require(\"neotest\").output_panel.toggle()<CR>")
