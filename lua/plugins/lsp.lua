return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {},
      },
      setup = {
        marksman = function()
          -- The setup function returning true tells LazyVim "I've handled this server setup myself"
          -- (even though we're actually just skipping it), which prevents the default setup from'
          -- running.
          return true
        end,
      },
    },
  },
}
