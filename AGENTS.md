# Detis Engine Documentation — agent notes

This repository is the **user-facing manual site**, not the engine source tree.

## Before you edit Markdown

1. **`AGENTS.md`** (this file)
2. **`.cursor/rules/read-rules-first.mdc`**
3. **`.cursor/rules/ascii-markdown.mdc`** for any Markdown edit
4. **`.cursor/rules/code-examples.mdc`** when examples or API names change
5. **`.cursor/rules/manual-voice.mdc`** for **`manuals/`**, **`tutorials/`**, **`getting_started/`**
6. **`.cursor/rules/sequential-navigation.mdc`** for **`## Continue reading`** footers and multi-page guide order

## Where truth lives

- Script API shape: **`game/engine/stubs/engine_stubs.lua`** in the shipped engine package
- Deep engine notes (optional link targets): engine repo **`docs/game/`**

## Audience

Students and first-time users. Manuals teach simple working paths; reference pages may be denser.

## Punctuation

Do not use the em dash (—) or Unicode arrows (→) in this repo’s Markdown. Use **`->`**, a colon, or a spaced hyphen instead. See **`.cursor/rules/ascii-markdown.mdc`** and **`.cursor/rules/manual-voice.mdc`**.

## Terminology

Stick to engine and editor wording (**world**, **entity**, **module**, **`gui_*`**, etc.). A loaded level is a **world**, not a “scene”. Do not invent alternate names. See **`.cursor/rules/manual-voice.mdc`**.

## Release labels

Do not mention release phase or version names in user docs (no alpha, beta, RC, version numbers). Describe behavior as it is today. Use **`> **Note:**`** for short limitations (see existing script reload and viewport picking notes), not **Early Alpha Notice** blocks.
