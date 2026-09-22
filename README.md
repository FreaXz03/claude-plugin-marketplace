# claude-plugin-marketplace

Personal Claude Code plugin marketplace mirroring every plugin currently installed for Fabian Morf. Each entry sources the plugin directly from its original repo (`git-subdir`), except `markitdown`, which is vendored here since it has no separate public repo.

## Usage

```
/plugin marketplace add FreaXz03/claude-plugin-marketplace
/plugin install <name>@claude-plugin-marketplace
```

## Plugins

| Plugin | Source |
|---|---|
| markitdown | vendored (`./plugins/markitdown`) |
| caveman | github.com/JuliusBrussee/caveman |
| claude-mem | github.com/thedotmack/claude-mem |
| context-mode | github.com/mksglu/context-mode |
| security-sweep | github.com/onomeaj/security-sweep-plugin |
| obsidian | github.com/kepano/obsidian-skills |
| pyright-lsp | github.com/anthropics/claude-plugins-official |
| commit-commands | github.com/anthropics/claude-plugins-official |
| security-guidance | github.com/anthropics/claude-plugins-official |
| code-review | github.com/anthropics/claude-plugins-official |
| context7 | github.com/anthropics/claude-plugins-official |
| claude-md-management | github.com/anthropics/claude-plugins-official |
| frontend-design | github.com/anthropics/claude-plugins-official |
| playwright | github.com/anthropics/claude-plugins-official |

Not included: Claude Code's own bundled plugins (`desktop-commander`, `pdf-viewer`, `engineering`, `cowork-plugin-management`, `anthropic-skills`) — these sync automatically with the app itself and aren't separately installable via marketplace.
