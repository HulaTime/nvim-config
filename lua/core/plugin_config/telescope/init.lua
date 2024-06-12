local builtin = require('telescope.builtin')

-- Find project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Find project files that are being tracked by git
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

-- Grep over project files, requires ripgrep to be installed
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('Grep > ') })
end)

-- Grep over project files including hidden files but excuding git directory, requires ripgrep to be installed
vim.keymap.set('n', '<leader>hs', function()
  builtin.grep_string({
    search = vim.fn.input('Grep > '),
    additional_args = function()
      return { '--hidden', '--glob', '!.git/*' }
    end
  })
end)
