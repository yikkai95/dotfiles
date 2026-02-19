---
name: note
description: Create a new note in the Obsidian vault at ~/Documents/vault. Prompts for title and content, then writes a properly formatted markdown file to the vault root.
---

Create a new note in the Obsidian vault at `~/Documents/vault/`.

## Vault Rules

- **Always write to vault root** (`~/Documents/vault/`) — never to subfolders like `Notes/`, `References/`, etc., unless the note is explicitly a Person (`People/`), Clipping (`Clippings/`), or Daily note (`Daily/`)
- **Filename format**: `YYYY-MM-DD HHMM Title.md` — get the current date and time via `date +"%Y-%m-%d %H%M"` before creating
- **Frontmatter**: minimal or none for quick captures
- **Links**: use `[[wiki-links]]` generously to connect related ideas, people, and categories
- **Categories**: always plural (e.g. `[[Projects]]`, `[[Ideas]]`, not `[[Project]]`)

## Step 1 — Get title and content

If the user passed a title as an argument (`$ARGUMENTS`), use it. Otherwise ask:

- What is the note title?
- What should the note contain? (accept freeform — the user may paste a brain dump, bullet points, or full prose)

## Step 2 — Get current datetime

```bash
date +"%Y-%m-%d %H%M"
```

Use this for both the filename and the `created` frontmatter field (date portion only: `YYYY-MM-DD`).

## Step 3 — Write the note

Write to `~/Documents/vault/YYYY-MM-DD HHMM <Title>.md`.

Use this frontmatter if the note warrants it (skip if it's a raw brain dump):

```yaml
---
created: YYYY-MM-DD
---
```

Format the body cleanly in markdown. Add `[[wiki-links]]` where relevant — link to people, topics, categories, or other notes you know exist in the vault.

## Step 4 — Confirm

Tell the user the full file path of the created note.
