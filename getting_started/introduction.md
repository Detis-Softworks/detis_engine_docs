# Detis Engine

**Spend your time making games, not fighting your engine.**

Detis Engine is a **focused, lightweight game engine designed for rapid iteration**. Built by a game dev veteran, Detis is **an opinionated toolset tailored for single-player 3D PC games.** There are no heavy import pipelines, no endless menu mazes, no shader compilation delays, and no C++ build plumbing to babysit.

Drop in your assets, author worlds in the built-in live editor, script in Lua, and hit play. All in a single executable.

## Built for production, shared with the world

Although **initially built as an internal tool** to power a specific 3D game, strong interest from other game developers prompted the decision to release Detis publicly.

Detis includes a **full visual 3D editor** alongside its **Lua API**. Prefabs (`.entity` files) live in the **Entity Browser**. Meshes, textures, materials, and worlds still use the engine file dialog and your OS file manager. That is an intentional trade-off for a small footprint, not a missing feature to wait on.

> **Early Alpha Notice:** Detis is under active development. Expect occasional bugs, API refinements, and additional features as development advances.

## Why choose Detis Engine?

- **Zero-friction iteration:** The editor and game live in the same app. Toggle with `Ctrl+P` / `Alt+P` in one viewport.
- **Direct asset pipeline:** Drop in standard **glTF / GLB** models and **DDS** textures. No import wait.
- **Core feature set:** Level editing, physics, a PBR renderer, 3D audio, animation, and AI pathfinding.
- **Lua gameplay:** Script with a full API. Reload with **Debug → Reload Assets** (`Shift+R`). It does not reload on file save yet.
- **Human-readable projects:** Worlds, materials, scripts, and shaders are plain text (JSON, `.mat`, `.lua`, `.glsl`). Diff them in Git, or point an AI coding tool at the folder.
- **Self-contained workspace:** One folder **is** your game. No launcher, no project manager.

## Is Detis Engine right for your project?

### Perfect for

- **Target platforms:** Native 64-bit **Windows** and **Linux** desktop.
- **Game scope:** 3D, single-player, level-based PC games.
- **Team size:** Solo developers and small indie teams who want a tight toolset.
- **Pragmatic devs:** Lua over visual scripting. Fast startup, lean tools.
- **Authored content:** Handcrafted worlds and set pieces, not endless procedural open worlds.

### Look elsewhere if you need

- **Mobile, console, or native 2D.**
- **Multiplayer or massively open worlds.**
- **AAA photorealism.** Solid PBR, not bleeding-edge graphics tech.
- **A built-in storefront or package manager.**
- **Engine C++ source** on the indie (binary + Lua) tier.
- **Visual scripting as the main way to make a game.**

## Recommended order

Read these in sequence. Each page links to the next step at the bottom.

### Getting started

1. **[Installation](installation.md)**
2. **[Quick start](quick_start.md)**
3. **[Project layout](project_layout.md)**
4. **[Sample content](sample_content.md)**
5. **[Editor overview](editor_overview.md)**

### Tutorials

1. **[Your first world](../tutorials/your_first_world.md)**
2. **[Your first prefab](../tutorials/your_first_prefab.md)**
3. **[Kick the ball](../tutorials/kick_the_ball.md)**

### Manuals

1. **[Lighting](../manuals/lighting.md)** — Sun, local lights, shadows, exposure.
2. **[Audio](../manuals/audio.md)** — Sound components, soundscapes, zones, music.
3. **[Script overview](../manuals/script_overview.md)** — Entity, world, and module scripts.

> **System requirement:** 64-bit PC with a dedicated discrete GPU.

## Next

**[Installation](installation.md).** Download and get up and running.
