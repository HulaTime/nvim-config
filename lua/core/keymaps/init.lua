require('core.keymaps.undotree');
require('core.keymaps.telescope')

-- move highlighted lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")

vim.keymap.set('n', '<C-H>', ':bprevious<CR>')
vim.keymap.set('n', '<C-L>', ':bnext<CR>')

