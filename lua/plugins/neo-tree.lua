return {
    "nvim-neo-tree/neo-tree.nvim",
    -- 设置neo-tree侧栏宽度
    opts = {
        window = {
            width = 30,
        },
        filesystem = {
            filtered_items = {
                visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
            },
        },
    },
}
