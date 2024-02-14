vim.g.ale_enable = 1
vim.g.ale_linters = {
    javascript = {'eslint'},
    typescript = {'eslint'},
}
vim.g.ale_fixers = {
    ['*'] = {'eslint'},
}
vim.g.ale_fix_on_save = 1

