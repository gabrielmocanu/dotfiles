-- Extra language server protocol options

return {
  { -- Bulb in gutter for code actions
    "kosayoda/nvim-lightbulb",
    config = function()
      require("nvim-lightbulb").setup({
        autocmd = { enabled = true },
        number = { enabled = true },
      })
    end,
  },
  { -- LSP Diagnostics in top right
    "dgagn/diagflow.nvim",
    opts = { scope = "line" },
  },
  {
    "chrisbra/csv.vim",
  },
  { -- Merge lines
    "Wansmer/treesj",
    keys = {
      "<space>m",
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({})
    end,
  },
  { -- Treesitter config
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "elixir",
      },
    },
  },
  { -- Mason config
    "williamboman/mason.nvim",
    opts = {
      ui = { border = "rounded" },
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        "ruff-lsp",
        "pyright",
        "autopep8",
        "shellcheck",
        "lexical",
      },
    },
  },
  {
    url = "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    ft = { "python", "typescript", "typescriptreact", "typescript.tsx" },
    dependencies = {
      "mfussenegger/nvim-jdtls",
    },
    config = function()
      require("sonarlint").setup({
        server = {
          cmd = {
            "java",
            "-cp",
            ".:/Users/" .. os.getenv("USER") .. "/.config/nvim/sonarlint/*",
            "-jar",
            "/Users/" .. os.getenv("USER") .. "/.config/nvim/sonarlint/sonarlint-server.jar",
            -- Ensure that sonarlint-language-server uses stdio channel
            "-stdio",
            "-analyzers",
            -- paths to the analyzers you need, using those for python and java in this example
            "/Users/"
              .. os.getenv("USER")
              .. "/.config/nvim/sonarlint/sonarpython.jar",
            "/Users/" .. os.getenv("USER") .. "/.config/nvim/sonarlint/sonarjs.jar",
            "/Users/" .. os.getenv("USER") .. "/.config/nvim/sonarlint/sonartext.jar",
            "/Users/" .. os.getenv("USER") .. "/.config/nvim/sonarlint/sonarhtml.jar",
          },
        },
        filetypes = {
          "python",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
      })
    end,
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    main = "render-markdown",
    opts = {},
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    "dense-analysis/ale",
    config = function()
      -- Configuration goes here.
      local g = vim.g

      g.ale_ruby_rubocop_auto_correct_all = 1

      g.ale_linters = {
        elixir = { "lexical", "mix" },
        lua = { "lua_language_server" },
      }
    end,
  },
}
