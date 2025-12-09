-- This configuration is experimental. Only enable it when in use.
-- if true then
--   return {}
-- end

return {
  "olimorris/codecompanion.nvim",
  tag = "v17.33.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
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
      anthropic = function()
        return require("codecompanion.adapters").extend("anthropic", {
          env = {
            api_key = "CLAUDE_API_KEY",
          },
        })
      end,
    },
    opts = {
      log_level = "DEBUG",
    },
  },
}
