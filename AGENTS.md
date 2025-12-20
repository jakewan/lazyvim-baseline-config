# AI Agents Configuration

This LazyVim setup includes AI-powered coding assistance through CodeCompanion.

## Configured AI Tools

### CodeCompanion

- **Provider**: Anthropic Claude Sonnet 4.5
- **Capabilities**: Chat, inline assistance, and command execution
- **API Key**: Set `CLAUDE_API_KEY` environment variable

## Usage

### Chat Interface

- `:CodeCompanionChat` - Open AI chat interface
- Ask questions about code, request explanations, or get coding help

### Inline Assistance

- `:CodeCompanionInline` - Get AI suggestions directly in your buffer
- Select code and ask for improvements, explanations, or refactoring

### Command Mode

- `:CodeCompanion <prompt>` - Execute AI commands directly
- Useful for quick code generation and problem-solving

## Setup Requirements

1. **API Key**: Export your Anthropic API key:

   ```bash
   export CLAUDE_API_KEY="your_api_key_here"
   ```

2. **Plugin**: CodeCompanion is automatically installed via lazy.nvim

## Debug Mode

Debug logging is enabled for troubleshooting. Check `:messages` for detailed AI interaction logs.
