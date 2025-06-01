-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Italic fonts
vim.g.t_ZH = "[3m"
vim.g.t_ZR = "[23m"

vim.opt.completeopt = "popup,noselect,noinsert"

-- WSL2 Clipboard Sync
-- TODO: Find some way to auto-install `win32yank.exe` in the correct path
if os.getenv("WSL_DISTRO_NAME") then
  vim.g.clipboard = {
    name = "win32yank",
    copy = {
      ["+"] = { "/home/" .. os.getenv("USER") .. "/.local/bin/win32yank.exe", "-i", "--crlf" },
      ["*"] = { "/home/" .. os.getenv("USER") .. "/.local/bin/win32yank.exe", "-i", "--crlf" },
    },
    paste = {
      ["+"] = { "/home/" .. os.getenv("USER") .. "/.local/bin/win32yank.exe", "-o", "--lf" },
      ["*"] = { "/home/" .. os.getenv("USER") .. "/.local/bin/win32yank.exe", "-o", "--lf" },
    },
  }
else
  vim.opt.clipboard:append({ "unnamedplus" })
end
