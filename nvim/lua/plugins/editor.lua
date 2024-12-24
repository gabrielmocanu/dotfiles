return {
  { -- Configure flash to zip through results easier
    "folke/flash.nvim",
    opts = {
      modes = {
        search = {
          enabled = true,
        },
        label = {
          rainbow = true,
        },
        char = {
          jump_labels = false,
          autohide = true,
        },
      },
    },
  },
  { -- Add indent indicators
    "lukas-reineke/virt-column.nvim",
    opts = {
      char = "▎",
      highlight = "CursorLineSign",
      virtcolumn = "80,120",
    },
  },
  { -- Auto save on focus lose
    "tmillr/sos.nvim",
    lazy = false,
    config = function()
      require("sos").setup()
    end,
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        options = {
          relativenumber = true,
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {
        sections = {
          { section = "header" },

          { section = "keys", gap = 1, padding = 1 },
          { pane = 1, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { pane = 1, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          {
            pane = 1,
            icon = " ",
            title = "Git Status",
            section = "terminal",
            enabled = vim.fn.isdirectory(".git") == 1,
            cmd = "hub status --short --branch --renames",
            height = 5,
            padding = 1,
            ttl = 5 * 60,
            indent = 3,
          },
          { section = "startup" },
        },
      },
    },
  },
  {
    "folke/twilight.nvim",
    opts = {},
  },
}
