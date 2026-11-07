# MCP server for agentic scripting

Detis ships **`detis_mcp`** in **`bin/`** next to the game executable. It is a small **MCP** (Model Context Protocol) server so AI assistants in Cursor, VS Code, or Claude Code can look up **this build's** Lua API, component names, default settings, and script templates before they edit your **`content/scripts/`** tree.

You do not install a separate package. If you have the engine zip, you already have the server.

This page is for **AI-assisted gameplay scripting**. For normal autocomplete in your editor, use [Lua editor setup](script_setup.md) and the stub files.

> **Note:** Native prompting inside the Detis editor is planned for a future update. Today, MCP is the supported agent path.

## When to use it

Use MCP when an agent (or you with agent mode) will write or refactor Lua. The server answers questions from shipped data in **`engine/ai/`**, not from the web. That cuts down invented API names and wrong script layout.

Humans can ignore MCP and rely on stubs plus the [Script API](/reference/README.md) reference.

## Open the right folder

Point your editor at the **project root**: the folder that contains **`bin`**, **`engine`**, and **`content`**. MCP configs assume that layout.

## Config files in the package

A fresh engine tree may already include MCP hooks at the project root:

| File | Editor |
|------|--------|
| **`.cursor/mcp.json`** | Cursor |
| **`.vscode/mcp.json`** | VS Code |
| **`.mcp.json`** | Claude Code |

They launch **`bin/detis_mcp`** over stdio. In Cursor, enable the **detis-engine** server in MCP settings if it is not already on. Claude Code may ask you to approve the server the first time you open the folder.

## Paste config for other setups

If your app keeps MCP settings outside the project, print a ready-made JSON snippet from **`bin/`**:

```bash
# Linux terminal at project root
bin/detis_mcp --print-config cursor
bin/detis_mcp --print-config vscode
bin/detis_mcp --print-config claude
bin/detis_mcp --print-config generic
```

On Windows, run the same flags on **`bin\detis_mcp.exe`** (or **`bin\detis_mcp`**) from a shell in the project root. Paste the printed JSON into that app's MCP config. Cursor and Claude use **`mcpServers`**. VS Code uses **`servers`** in **`.vscode/mcp.json`**.

## Custom project root

If for any reason you want **`detis_mcp`** anywhere else other than **`bin/`** of the tree you opened, start it with **`--root`** set to the directory that contains **`bin`**, **`engine`**, and **`content`**:

```bash
bin/detis_mcp --root /path/to/your/project
```

Your MCP config must pass that argument if the working directory is not the game root.

## What the server exposes

| Tool | Use |
|------|-----|
| **`lookup_lua`** | Confirm a Lua function exists and read its signature for **this** binary. |
| **`lookup_component`** | Component type strings stored in world files. |
| **`lookup_setting`** | Shipped default engine and renderer settings. |
| **`get_template`** | World, entity, or module script template text. |
| **`where`** | Search names across Lua API, components, settings, and templates. |

Agents should call **`lookup_lua`** before using a function they have not already confirmed. A miss means that name is not in this build.

## Agent instructions file

The package includes **`engine/ai/AGENTS.md`**. It lists scripting rules (templates, **`lookup_lua`**, valid script sections). 

The same folder holds **`engine/ai/HOOKUP.md`** (short MCP hookup note for maintainers). The user manual page you are reading is the full setup guide.

## Without MCP

If the server is off, agents can still read:

- **`engine/ai/engine_api.json`** (Lua catalog for this drop)
- **`content/scripts/_templates/`** (world, entity, module templates)
- **`engine/stubs/engine_stubs.lua`** and **`content/stubs/game_stubs.lua`**

Running the Release engine regenerates **`engine_api.json`** when script API sources are available in the build. A shipped zip keeps the catalog from the build that produced it.

## Continue reading

**Previous:** [Lua editor setup](script_setup.md): VS Code and stubs.

**Next:** [Entity scripts](script_entity.md): **Script** component and callbacks.
