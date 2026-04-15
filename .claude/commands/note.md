---
name: note
description: Create a new capture note in the Obsidian vault at raw/ using the `obsidian` CLI. Prompts for title and content, then creates a properly formatted markdown file via `obsidian create`.
---

Create a new capture note in the Obsidian vault using the `obsidian` CLI (binary at `/Applications/Obsidian.app/Contents/MacOS/obsidian`, already on PATH).

**Vault location:** `/Users/yikkai/Library/Mobile Documents/iCloud~md~obsidian/Documents/vault`

## Rules

- **Always write to `raw/`** — captures live at `raw/<filename>.md`, never deeper subfolders, never vault root
- **Filename format**: `YYYY-MM-DD HHMM Title.md` — 4-digit time required
- **Frontmatter**: `created` only. Optionally `source` if the note came from a specific URL. Do NOT add `related`, `categories`, or any other fields — the wiki linter will fill those in later with full vault context.
- **Do NOT add `[[wiki-links]]`** unless the user typed them in the content themselves. Linking is the linter's job, not the capture step's.
- **Do NOT create linked notes or stubs** — just create the single capture note and stop

## Step 1 — Get title and content

If the user passed a title as an argument (`$ARGUMENTS`), use it. Otherwise ask:

- What is the note title?
- What should the note contain? (accept freeform — the user may paste a brain dump, bullet points, or full prose)

## Step 2 — Get current datetime

```bash
date +"%Y-%m-%d %H%M"
```

Use this for both the filename and the `created` frontmatter field (date portion only: `YYYY-MM-DD`).

## Step 3 — Create the note via `obsidian create`

`obsidian create` writes a file at the exact vault-relative `path=` you give it. Use `\n` for newlines inside `content=` — the CLI interprets the escapes, not the shell, so wrap `content=` in **single quotes** to prevent shell expansion.

Bake the frontmatter into `content=` directly, and prefix the path with `raw/`:

```bash
obsidian create \
  path="raw/2026-04-10 1900 My Title.md" \
  content='---\ncreated: 2026-04-10\n---\n\nBody goes here verbatim from the user.'
```

Frontmatter fields:

- **`created`** — `YYYY-MM-DD` from Step 2. Required.
- **`source`** — optional URL if the note is derived from a specific external source. **Omit the property entirely** if there is no source — don't leave a placeholder.

That's it. No `related`, no `categories`, no tags. The wiki linter handles all linking and categorization downstream.

Escaping notes:

- Single-quote the whole `content=` value so the shell leaves `\n` and `"` alone.
- Inner double quotes (e.g. `"[[Foo]]"` in YAML lists) stay as-is inside single quotes.
- If the title contains a single quote, switch to double quotes for `content=` and escape the inner double quotes as `\"`.
- For very long bodies, prefer a heredoc-built variable:
  ```bash
  CONTENT=$(printf '%s' '---\ncreated: 2026-04-10\n...---\n\nBody...')
  obsidian create path="raw/2026-04-10 1900 My Title.md" content="$CONTENT"
  ```

Fallback — if escaping the content is too gnarly, create the file with a body only and set frontmatter via `property:set`:

```bash
obsidian create path="raw/2026-04-10 1900 My Title.md" content='Body here.'
obsidian property:set path="raw/2026-04-10 1900 My Title.md" name=created value="2026-04-10" type=date
```

## Step 4 — Confirm

Report the full absolute path of the created note:

`/Users/yikkai/Library/Mobile Documents/iCloud~md~obsidian/Documents/vault/raw/<filename>.md`

That's it. Do not check or create any linked notes.
