return {
  "tanvirtin/monokai.nvim",
  lazy = true,
  config = function()
    require("monokai").setup({
      palette = require("monokai").pro,
    })
  end,
}
