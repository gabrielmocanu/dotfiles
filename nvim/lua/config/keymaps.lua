-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- NeoTest map
map("n", "<leader>j", function() end, { desc = "Neotest" })
map("n", "<leader>jj", function()
  require("neotest").run.run()
end, { desc = "Run test at cursor" })

map("n", "<leader>jf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Run all tests in file" })

map("n", "<leader>jx", function()
  require("neotest").run.stop()
end, { desc = "Stop test run" })

map("n", "<leader>jr", function()
  require("neotest").output.open({ enter = true, auto_close = true })
end, { desc = "Toggle test result" })

map("n", "<leader>js", function()
  require("neotest").summary.toggle()
end, { desc = "Toggle summary" })

map("n", "<leader>jo", function()
  require("neotest").output_panel.toggle()
end, { desc = "Toggle output panel" })

-- Octo map
map("n", "<leader>go", "<cmd>Octo<CR>", { desc = "Open Octo" })
map("n", "<leader>goc", "<cmd>Octo <CR>", { desc = "Add comment" })
map("n", "<leader>gop", "<cmd>Octo <CR>", { desc = "Pull Request" })
map("n", "<leader>gor", "<cmd>Octo <CR>", { desc = "Review" })
map("n", "<leader>got", "<cmd>Octo <CR>", { desc = "Thread" })
map("n", "<leader>gopl", "<cmd>Octo pr list<CR>", { desc = "Open PR list" })
map("n", "<leader>gopc", "<cmd>Octo pr create<CR>", { desc = "Create PR" })
map("n", "<leader>gopk", "<cmd>Octo pr checkout<CR>", { desc = "Checkout PR" })
map("n", "<leader>gopb", "<cmd>Octo pr browser<CR>", { desc = "Open PR in browser" })
map("n", "<leader>gopp", "<cmd>Octo pr checks<CR>", { desc = "View PR checks" })
map("n", "<leader>gopm", "<cmd>Octo pr merge squash<CR>", { desc = "Merge PR" })
map("n", "<leader>gopr", "<cmd>Octo pr reload<CR>", { desc = "Reload PR" })
map("n", "<leader>gors", "<cmd>Octo review start<CR>", { desc = "Start review" })
map("n", "<leader>gorS", "<cmd>Octo review submit<CR>", { desc = "Submit review" })
map("n", "<leader>gord", "<cmd>Octo review discard<CR>", { desc = "Discard review" })
map("n", "<leader>gorx", "<cmd>Octo review close<CR>", { desc = "Close review window" })
map("n", "<leader>gorc", "<cmd>Octo review comments<CR>", { desc = "View pending review comments" })
map("n", "<leader>goca", "<cmd>Octo comment add<CR>", { desc = "Add comment" })
map("n", "<leader>gotr", "<cmd>Octo thread resolve<CR>", { desc = "Resolve thread" })
map("n", "<leader>gotu", "<cmd>Octo thread unresolve<CR>", { desc = "Unresolve thread" })
map("n", "<leader>gt", "<cmd>GitTimeLapse<CR>", { desc = "Git Timelapse" })

-- Notify
map("n", "<leader>uN", "<cmd>Telescope notify <CR>", { desc = "View all notifications" })
-- Advanced Git Search
map("n", "<leader>ga", function() end, { desc = "Advanced Git" })
map("n", "<leader>gad", "<cmd>Telescope advanced_git_search diff_branch_file<CR>", { desc = "Diff with branch " })

-- Other maps
map("n", "<leader>ce", "<cmd>NiceReference<CR>", { desc = "Go to r[e]ferences" })
map("n", "<leader>ue", "<cmd>set relativenumber!<CR>", { desc = "Toggle relative line numbers" })
map("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "Git blame" })
map("n", "<leader>ut", "<cmd>Telescope undo<cr>", { desc = "Undo tree" })

-- Codeium
map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, desc = "Accept codeium suggestion" })
