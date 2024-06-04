-- 如果在vscode中打开
if vim.g.vscode then
    -- VSCode extension
    require("code.keymaps")
    require("code.options")
    require("code.lazy")
else
    -- ordinary Neovim
    require("config.keymaps")
    require("config.autocmds")
    require("config.options")
    require("config.lazy")
end
