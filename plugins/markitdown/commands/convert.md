---
description: Convert a file or URL to Markdown with MarkItDown
argument-hint: <file-or-url> [output.md]
---

Convert `$1` to Markdown using the markitdown skill.

- If a second argument (`$2`) is given, write the Markdown there (confirm before overwriting an existing file) and report the path and size.
- Otherwise, convert and show a short summary of the document (type, length, main headings) and offer to save the full Markdown next to the source as `<name>.md`.
- If `$1` is empty, ask which file or URL to convert.
