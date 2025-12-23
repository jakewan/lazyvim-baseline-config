return {
  {
    "georgeharker/mcp-diagnostics.nvim",
    -- Optional: only load when you actually use Claude
    cmd = { "MCPDiagnostics" },
    opts = {
      mode = "server", -- 2025 standard mode for local Claude Code
      server = {
        -- Use a stable socket path for Claude to find
        server_address = "/tmp/nvim-mcp-diagnostics.sock",
        auto_start_server = true,
        auto_reload_files = true,
      },
    },
    config = function(_, opts)
      require("mcp-diagnostics").setup(opts)
      -- Optional: Auto-start the server when opening Rust files
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "rust",
        callback = function()
          vim.cmd("MCPDiagnosticsStart")
        end,
      })
    end,
  },
}
