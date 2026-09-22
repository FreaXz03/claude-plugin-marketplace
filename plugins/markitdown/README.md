# markitdown plugin

Claude Code plugin around [microsoft/markitdown](https://github.com/microsoft/markitdown).

| Piece | What it does |
|---|---|
| `.mcp.json` + `scripts/run-mcp.sh` | Starts the `markitdown-mcp` server, exposing `convert_to_markdown(uri)`. Uses `markitdown-mcp` on PATH, else `uvx`, else `pipx run`. |
| `skills/markitdown` | Teaches Claude when and how to convert documents, via the MCP tool or the `markitdown` CLI. |
| `commands/convert.md` | `/markitdown:convert <file-or-url> [output.md]` |

## Requirements

Python 3.10+ and one of `uv` (recommended), `pipx`, or `pip install markitdown-mcp`.

## Try it locally

```bash
claude --plugin-dir "/Users/fabianmorf/Desktop/claude plugins/markitdown-plugin"
```

Then run `/markitdown:convert some-file.pdf`.
