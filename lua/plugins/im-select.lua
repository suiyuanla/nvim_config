return {
    "keaising/im-select.nvim",
    config = function()
        require("im_select").setup({
            set_default_events = { "VimEnter", "InsertLeave", "CmdlineLeave" },
        })
    end,
}
