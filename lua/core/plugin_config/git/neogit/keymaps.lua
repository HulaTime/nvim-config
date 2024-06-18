local neogit = require('neogit');

vim.keymap.set('n', '<leader>gs', neogit.open, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gpull', ':Neogit pull<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gpush', ':Neogit push<CR>', { silent = true, noremap = true })

vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { silent = true, noremap = true })
