return {
  {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      show_auto_restore_notif = true,
      -- log_level = 'debug',
    },
  },
  { -- package.json info
    "vuki656/package-info.nvim",
    config = function()
      require("package-info").setup()
    end,
  },
  {
    "mcauley-penney/visual-whitespace.nvim",
    config = true,
  },
  {
    "Funk66/jira.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("jira").setup()
    end,
    cond = function()
      return vim.env.JIRA_API_TOKEN ~= nil
    end,
    keys = {
      { "<leader>jv", ":JiraView<cr>", desc = "View Jira issue", silent = true },
      { "<leader>jo", ":JiraOpen<cr>", desc = "Open Jira issue in browser", silent = true },
    },
  },
}
