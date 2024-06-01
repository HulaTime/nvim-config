vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle)

vim.opt.undodir = os.getenv('HOME') .. '/.nvim/undodir' -- give the undo plugin long lived access for days and days of stuff
vim.opt.undofile = true

