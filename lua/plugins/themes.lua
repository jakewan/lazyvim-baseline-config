-- Centralized theme management
local M = {}

-- Define your default theme here
local DEFAULT_THEME = "tokyonight"

-- Define mode-specific themes
local MODE_THEMES = {
  SCREENCAST_MODE = "monokai",
  -- Future modes can be added here:
  -- PRESENTATION_MODE = "catppuccin",
  -- DARK_MODE = "gruvbox",
}

-- Function to determine current theme
local function get_current_theme()
  -- Check each mode in priority order
  for env_var, theme in pairs(MODE_THEMES) do
    if vim.env[env_var] then
      return theme
    end
  end
  return DEFAULT_THEME
end

return {
  -- Configure LazyVim with dynamic theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = get_current_theme(),
    },
  },
}
