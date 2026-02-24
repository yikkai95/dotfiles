---
name: note
description: Create a new note in the Obsidian vault at ~/Library/Mobile Documents/com~apple~CloudDocs/Documents/vault. Prompts for title and content, then writes a properly formatted markdown file to the vault root.
---

Create a new note in the Obsidian vault at `~/Library/Mobile Documents/com~apple~CloudDocs/Documents/vault/`.

## Vault Rules

- **Always write to vault root** (`~/Library/Mobile Documents/com~apple~CloudDocs/Documents/vault/`) — never to subfolders like `Notes/`, `References/`, etc., unless the note is explicitly a Person (`People/`), Clipping (`Clippings/`), or Daily note (`Daily/`)
- **Filename format**: `YYYY-MM-DD HHMM Title.md` — get the current date and time via `date +"%Y-%m-%d %H%M"` before creating
- **Frontmatter**: minimal or none for quick captures
- **Links**: use `[[wiki-links]]` generously to connect related ideas, people, and categories — always inline them in the prose, never as a standalone list at the footer
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

Write to `~/Library/Mobile Documents/com~apple~CloudDocs/Documents/vault/YYYY-MM-DD HHMM <Title>.md`.

Use this frontmatter if the note warrants it (skip if it's a raw brain dump):

```yaml
---
created: YYYY-MM-DD
---
```

Format the body cleanly in markdown. Add `[[wiki-links]]` where relevant — link to people, topics, categories, or other notes you know exist in the vault.

## Step 4 — Create linked notes

After writing the main note, check every `[[wiki-link]]` used. If the linked note doesn't already exist in the vault, create it:

- **References** (specific topics, tools, people, concepts) → `References/<Name>.md` — include a short description and `created` frontmatter
- **Categories** (plural grouping labels like `[[Tools]]`, `[[Terminals]]`) → `Categories/<Name>.md` with this format:

```yaml
---
tags:
  - categories
---

![[<Name>.base]]
```

For new **Categories**, also check if a matching `<Name>.base` file exists in the vault root. If not, create one:

```yaml
filters:
  and:
    - categories.contains(link("<Name>"))
    - '!file.name.contains("Template")'
views:
  - type: table
    name: Table
```

Use `ls` or `Glob` to check existence before creating.

## Step 5 — Confirm

Tell the user the full file path of the created note and list any linked notes that were created.
