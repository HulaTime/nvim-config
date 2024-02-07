require('core.keymaps.undotree');
require('core.keymaps.telescope')

-- move highlighted lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")

-- quickly navigate between buffers
vim.keymap.set('n', '<C-H>', ':bprevious<CR>')
vim.keymap.set('n', '<C-L>', ':bnext<CR>')

-- do not lose yanked content when pasting
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to system clipboard
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

