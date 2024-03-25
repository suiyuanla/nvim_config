-- 如果在vscode中打开
if vim.g.vscode then
    -- VSCode extension
    require("vscode.keymaps")
    require("vscode.options")
    require("vscode.lazy")
else
    -- ordinary Neovim
    require("config.keymaps")
    require("config.autocmds")
    require("config.options")
    require("config.lazy")
end
