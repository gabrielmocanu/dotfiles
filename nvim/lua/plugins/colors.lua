--- Plugin for CSS Colors
return {
  { "brenoprata10/nvim-highlight-colors" },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      css = true,
      css_fn = true,
      hsl_fn = true,
      tailwind = true,
    }
  },
  {
    "tomasiser/vim-code-dark",
    config = function()
      vim.g.codedark_transparent = 1
      vim.g.codedark_italics = 1
      vim.g.codedark_modern = 1
    end,
  },
  {
    "ray-x/aurora",
    config = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
    end,
  },
}
