-- 如果在vscode中打开
if vim.g.vscode then
    -- VSCode extension
    require("vscode.options")
    require("vscode.keymaps")
else
    -- ordinary Neovim
    require("config.lazy")
    require("config.options")
end
