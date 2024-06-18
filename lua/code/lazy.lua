local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{ -- 自动切换输入法
    "keaising/im-select.nvim",
    config = function()
        require("im_select").setup({
            set_default_events = {"VimEnter", "InsertLeave", "CmdlineLeave"}
        })
    end
}, { -- flash搜索
    -- "folke/flash.nvim",
    -- event = "VeryLazy",
    -- ---@type Flash.Config
    -- opts = {}
    -- stylua: ignore
    --     keys = {{
    --         "s",
    --         mode = {"n", "x", "o"},
    --         function()
    --             require("flash").jump()
    --         end,
    --         desc = "Flash"
    --     }, {
    --         "S",
    --         mode = {"n", "x", "o"},
    --         function()
    --             require("flash").treesitter()
    --         end,
    --         desc = "Flash Treesitter"
    --     }, {
    --         "r",
    --         mode = "o",
    --         function()
    --             require("flash").remote()
    --         end,
    --         desc = "Remote Flash"
    --     }, {
    --         "R",
    --         mode = {"o", "x"},
    --         function()
    --             require("flash").treesitter_search()
    --         end,
    --         desc = "Treesitter Search"
    --     }, {
    --         "<c-s>",
    --         mode = {"c"},
    --         function()
    --             require("flash").toggle()
    --         end,
    --         desc = "Toggle Flash Search"
    --     }}
}})
