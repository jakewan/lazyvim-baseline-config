return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    { "stevearc/dressing.nvim", opts = {} },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "anthropic",
        model = "claude-sonnet-4-5",
      },
      inline = {
        adapter = "anthropic",
        model = "claude-sonnet-4-5",
      },
      cmd = {
        adapter = "anthropic",
        model = "claude-sonnet-4-5",
      },
    },
    adapters = {
      http = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "CLAUDE_API_KEY",
            },
          })
        end,
      },
    },
    opts = {
      log_level = "DEBUG",
    },
  },
}
