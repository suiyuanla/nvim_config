-- Keymaps are automatically loaded on the VeryLazy event
vim.g.mapleader = " "

-- 空格+q快速退出
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {
    noremap = true,
    silent = true
})

-- 把jk映射到gj,gk
vim.api.nvim_set_keymap('n', 'j', 'gj', {
    noremap = true,
    silent = true
})

vim.api.nvim_set_keymap('n', 'k', 'gk', {
    noremap = true,
    silent = true
})

-- 把空格+l映射到:Lazy
vim.api.nvim_set_keymap('n', '<leader>l', ':Lazy<CR>', {
    noremap = true,
    silent = true
})
