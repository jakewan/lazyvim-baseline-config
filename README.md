# LazyVim Configuration

A customized [LazyVim](https://github.com/LazyVim/LazyVim) setup with AI-powered coding assistance and multi-language support.

## Features

### Language Support

- **Go** - Full LSP support with gopls
- **Python** - Pyright LSP, venv-selector for virtual environments
- **Rust** - rustaceanvim for enhanced Rust development
- **TypeScript/JavaScript** - Full TypeScript support with auto-tags
- **JSON** - JSON/JSONC with SchemaStore integration
- **Markdown** - Enhanced rendering and preview
- **TOML** - Native support for config files

### AI Integration

- **Claude Code** - Native integration via LazyVim extras
- **CodeCompanion** - Chat, inline, and command modes with Claude Sonnet 4.5
  - Requires `CLAUDE_API_KEY` environment variable

### Themes

| Theme | Activation |
|-------|-----------|
| Tokyo Night | Default |
| Monokai Pro | Set `SCREENCAST_MODE=1` |
| Catppuccin | Available (configure in `themes.lua`) |

### Key Plugins

- **fzf-lua** - Fast fuzzy finding
- **mini.surround** - Text object manipulation
- **conform.nvim** - Code formatting with Prettier
- **gitsigns.nvim** - Git integration
- **trouble.nvim** - Diagnostics viewer
- **which-key.nvim** - Keybinding hints
- **flash.nvim** - Enhanced navigation
- **noice.nvim** - Improved UI

## Setup

1. **Clone** to `~/.config/nvim`
2. **Set API key** for AI features:
   ```bash
   export CLAUDE_API_KEY="your_key"
   ```
3. **Launch** Neovim - plugins install automatically

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── config/
│   │   ├── lazy.lua      # Plugin manager & extras
│   │   ├── options.lua   # Vim options
│   │   ├── keymaps.lua   # Custom keybindings
│   │   └── autocmds.lua  # Auto commands
│   └── plugins/
│       ├── codecompanion.lua  # AI chat config
│       ├── themes.lua         # Theme management
│       └── monokai.lua        # Monokai theme
└── lazy-lock.json        # Plugin version lock
```

## AI Usage

See [AGENTS.md](./AGENTS.md) for detailed AI assistant documentation.

### Quick Commands

- `:CodeCompanionChat` - Open AI chat
- `:CodeCompanionInline` - Inline suggestions
- `:CodeCompanion <prompt>` - Direct command

## Resources

- [LazyVim Documentation](https://lazyvim.github.io)
- [CodeCompanion](https://github.com/olimorris/codecompanion.nvim)
