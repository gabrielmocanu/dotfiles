-- Add options for notify to avoid transparent background errors

return {
  {
    "rcarriga/nvim-notify",
    opts = {
      fps = 10,
      background_colour = "#000000",
      stages = "static",
      render = "compact",
    },
  },
}
