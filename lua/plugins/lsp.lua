-- LSP configuration overrides
--
-- To disable a specific LSP server in LazyVim:
-- The setup function returning true tells LazyVim "I've handled this server setup myself"
-- (even though you're actually just skipping it), which prevents the default setup from running.
--
-- Example:
--   servers = {
--     server_name = {},
--   },
--   setup = {
--     server_name = function()
--       return true  -- Prevents default setup
--     end,
--   },

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {},
      setup = {},
    },
  },
}
