return {
  {
    "nvim-neotest/neotest",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-python",
      "marilari88/neotest-vitest",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python"),
          require("neotest-vitest")({
            vitestCommand = "vitest",
          }),
        },
        icons = {
          passed = "🟢",
          running = "🟡",
          skipped = "🛞",
          unknown = "⚪",
          failed = "🔴",
        },
      })
    end,
  },
}
