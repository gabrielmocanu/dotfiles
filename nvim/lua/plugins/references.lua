-- Code references plugins

return {
  {
    "wiliamks/nice-reference.nvim",
    dependencies = {
      {
        "rmagatti/goto-preview",
        config = function()
          require("goto-preview").setup({})
        end,
      },
    },
  },
}
