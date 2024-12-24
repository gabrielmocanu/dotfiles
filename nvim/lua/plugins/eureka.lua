return {
  "EdmondTabaku/eureka",
  config = function()
    require("eureka").setup({
      default_notes = {
        "<C-q> - Vim Block Mode Alternative",
        ":%!jq . - format JSON",
        ":sort - sort document",
        ":sort u - sort, remove duplicates"
      },
      close_key = "q"
    })
  end
}
