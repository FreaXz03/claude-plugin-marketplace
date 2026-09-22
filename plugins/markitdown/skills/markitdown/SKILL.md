---
name: markitdown
description: Convert documents to Markdown so they can be read and analyzed. Use when the user gives or mentions a PDF, Word (.docx), PowerPoint (.pptx), Excel (.xlsx/.xls), EPUB, ZIP, image, audio file, Outlook message, or a web page or YouTube URL, and the content needs to be read, summarized, searched or quoted.
---

# MarkItDown

MarkItDown turns many file types into structure-preserving Markdown (headings, lists, tables, links). Output is meant for LLM consumption, not high-fidelity human-facing conversion.

## How to convert

1. **MCP tool, if available**: call `convert_to_markdown` with a `file:///absolute/path`, `https://...` or `data:` URI. It returns the Markdown as text.
2. **Otherwise the CLI**:
   ```bash
   markitdown "path/to/file.pdf" -o "/tmp/file.md"   # or omit -o to print to stdout
   ```
   If `markitdown` is not on PATH, try `uvx --from 'markitdown[all]' markitdown ...`; if that fails, tell the user to run `pip install 'markitdown[all]'` (needs Python 3.10+). Do not install packages without asking.

## Guidance

- Large documents: write to a file (`-o`) and read only the relevant parts rather than pulling the whole output into context.
- Scanned PDFs and images have no text layer; plain conversion returns little. Say so, and suggest the `markitdown-ocr` plugin (`--use-plugins`, needs an OpenAI-compatible vision client).
- Audio transcription and YouTube transcripts need the `audio-transcription` / `youtube-transcription` extras; a missing-dependency error means the extra isn't installed.
- MarkItDown runs with the current user's file and network access. Only convert URLs and files the user pointed you to.
- Save converted output next to the source or where the user asks; don't overwrite existing files without confirming.
