#!/usr/bin/env bash
# Launch the markitdown-mcp STDIO server with whatever Python tooling is available.
set -e

if command -v markitdown-mcp >/dev/null 2>&1; then
  exec markitdown-mcp "$@"
elif command -v uvx >/dev/null 2>&1; then
  exec uvx markitdown-mcp "$@"
elif command -v pipx >/dev/null 2>&1; then
  exec pipx run markitdown-mcp "$@"
fi

cat >&2 <<'MSG'
markitdown plugin: could not start the MCP server.
Install one of the following, then restart Claude Code:
  brew install uv          (recommended; the plugin then runs markitdown-mcp via uvx)
  pipx install markitdown-mcp
  pip install markitdown-mcp
MSG
exit 1
