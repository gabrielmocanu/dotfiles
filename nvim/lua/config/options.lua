-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set editable background to transparent
vim.api.nvim_set_hl(0, "OctoEditable", { bold = true, bg = "None" })

-- Enable spell check by default
vim.api.nvim_set_option("spell", true)
-- Set spelloptions type to camel
vim.api.nvim_set_option("spelloptions", "camel")

-- WSL2 Clipboard Sync
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = { "/home/bogdan/.local/bin/win32yank.exe", "-i", "--crlf" },
    ["*"] = { "/home/bogdan/.local/bin/win32yank.exe", "-i", "--crlf" },
  },
  paste = {
    ["+"] = { "/home/bogdan/.local/bin/win32yank.exe", "-o", "--lf" },
    ["*"] = { "/home/bogdan/.local/bin/win32yank.exe", "-o", "--lf" },
  },
}
