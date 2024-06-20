return {
    {

        "xiantang/darcula-dark.nvim",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            priority = 1000, -- Ensure it loads first
            config = function()
                vim.cmd("colorscheme darcula-dark")
            end,
        },
    },
    -- {
    --   "olimorris/onedarkpro.nvim",
    --   priority = 1000, -- Ensure it loads first
    --   config = function()
    --     vim.cmd("colorscheme onedark_vivid")
    --   end,
    -- }
}
