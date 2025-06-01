return {
  "github/copilot.vim",
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- default window options
      window = {
        layout = "vertical", -- 'vertical', 'horizontal', 'float', 'replace', or a function that returns the layout
        width = 0.5, -- fractional width of parent, or absolute width in columns when > 1
        height = 0.5, -- fractional height of parent, or absolute height in rows when > 1
        -- Options below only apply to floating windows
        relative = "editor", -- 'editor', 'win', 'cursor', 'mouse'
        border = "single", -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
        row = nil, -- row position of the window, default is centered
        col = nil, -- column position of the window, default is centered
        title = "Copilot Chat", -- title of chat window
        footer = nil, -- footer of chat window
        zindex = 1, -- determines if window is on top or below other floating windows
      },

      show_folds = true,
      -- See Configuration section for options
    },
    mappings = {
      submit_prompt = {
        normal = "<C-s>",
        insert = "<C-s>",
      },
      show_diff = {
        full_diff = true,
      },
    },
    keys = {
      {
        "<leader>io",
        function()
          require("CopilotChat").open({
            layout = "vertical", -- 'vertical', 'horizontal', 'float', 'replace', or a function that returns the layout
            width = 0.5, -- fractional width of parent, or absolute width in columns when > 1
            height = 0.5, -- fractional height of parent, or absolute height in rows when > 1
            -- Options below only apply to floating windows
            relative = "editor", -- 'editor', 'win', 'cursor', 'mouse'
            border = "single", -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
            row = nil, -- row position of the window, default is centered
            col = nil, -- column position of the window, default is centered
            title = "Copilot Chat", -- title of chat window
            footer = nil, -- footer of chat window
            zindex = 1, -- determines if window is on top or below other floating windows
          })
        end,
        desc = "Copilot - Open chat",
      },
      {
        "<leader>iq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick chat",
      },
      {
        "<leader>ip",
        function()
          local chat = require("CopilotChat")
          chat.select_prompt()
        end,
        desc = "Copilot - Prompt actions",
      },
    },
  },
}
