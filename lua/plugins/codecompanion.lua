-- This configuration is experimental. Only enable it when in use.
if true then
  return {}
end

return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    strategies = {
      chat = {
        adapter = "anthropic",
      },
      inline = {
        adapter = "anthropic",
      },
      cmd = {
        adapter = "anthropic",
      },
    },
    adapters = {
      http = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "CURRENT_API_KEY_CLAUDE",
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
