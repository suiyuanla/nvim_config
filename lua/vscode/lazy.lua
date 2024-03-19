local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- 自动切换输入法
    "keaising/im-select.nvim",
    config = function()
        require("im_select").setup({
            set_default_events = { "VimEnter", "InsertLeave", "CmdlineLeave" },
        })
    end,
})