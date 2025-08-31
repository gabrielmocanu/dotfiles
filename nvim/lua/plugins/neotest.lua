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
      "jfpedroza/neotest-elixir",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python"),
          require("neotest-vitest")({
            vitestCommand = "pnpm --prefix assets run test:vitest",
          }),
          require("neotest-elixir")({
            filter_dir = function(name, rel_path, root)
              return rel_path == "test"
                or rel_path == "lib"
                or vim.startswith(rel_path, "test/")
                or vim.startswith(rel_path, "lib/")
            end,
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
