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
      window = {
        layout = "float",
        relative = "editor",
        width = 1,
        height = 0.4,
        row = 30,
      },

      show_folds = true,
      -- See Configuration section for options
    },
    mappings = {
      submit_prompt = {
        normal = "<C-s>",
        insert = "<C-s>",
      },
    },
    keys = {
      {
        "<leader>cx",
        function()
          require("CopilotChat").ask()
        end,
        desc = "CopilotChat - Ask",
      },
      {
        "<leader>cq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick chat",
      },
      {
        "<leader>cp",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end,
        desc = "CopilotChat - Prompt actions",
      },
      -- {
      --   "<leader>ccp",
      --   function()
      --     local actions = require("CopilotChat.actions")
      --     require("CopilotChat.integrations.fzflua").pick(actions.prompt_actions())
      --   end,
      --   desc = "CopilotChat - Prompt actions",
      -- },
    },

    -- See Commands section for default commands if you want to lazy load on them
  },
}
