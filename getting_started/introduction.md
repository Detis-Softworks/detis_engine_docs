# Detis Engine

Detis Engine is a **focused, lightweight game engine designed for rapid iteration**. Designed and built by a game dev veteran, Detis is **an opinionated toolset tailored for single-player 3D PC games.** There are no heavy import pipelines, no endless menu mazes, no shader compilation delays, and no C++ build plumbing to babysit.

Drop in your assets, author worlds in the built-in live editor, script in Lua, and hit play. All in a single executable.

## Built for production, shared with the world

Although **initially built as an internal tool** to power a specific 3D game, strong interest from other game developers prompted the decision to release Detis publicly. Detis comes with a **full visual 3D editor** alongside its **Lua API**. 

> **Early Alpha Notice:** Detis is under active development. Expect occasional bugs, API refinements, and additional features as development advances.

Need quick scope answers first? See [FAQ](faq.md).

## Why choose Detis Engine?

- **Built for one clear target:** 3D single-player PC games with hand-authored, level-based worlds.
- **Less overhead than general-purpose engines:** You avoid broad multi-platform and multi-genre complexity that slows iteration.
- **Fast iteration loop:** Editor and game are the same executable. Switch modes with in one viewport.
- **Direct asset pipeline:** Use raw **glTF / GLB** models and **DDS / KTX** textures with no import pipeline.
- **Lean scripting model:** Gameplay in Lua with a deep API, with hot-reload.
- **Practical core stack:** PBR renderer, physics, 3D audio, animation, and pathfinding without niche bloat.
- **Plain-text project data:** Worlds, materials, scripts, and shaders are readable and diffable.

## Is Detis Engine right for your project?

### Perfect for

- **Target platforms:** Native 64-bit **Windows** and **Linux** desktop.
- **Game scope:** 3D, single-player, level-based PC games.
- **Team size:** Solo developers and small indie teams who want a tight toolset.
- **Pragmatic devs:** Lua over visual scripting. Fast startup, lean tools.
- **Authored content:** Made for handcrafted worlds and set pieces.

### Skip if you need

- **Mobile, console, or native 2D** right out of the box.
- **Multiplayer.** No network suppor and not planned to happen soon. 
- **Massively open worlds.** Not currently supported. 
- **A built-in storefront or package manager.**
- **Engine C++ source.** Currently not available as part of the base tier.
- **Visual scripting.** Not currently supported.

## Recommended order

Read these in sequence. Each page links to the next step at the bottom.

### Getting started

1. **[FAQ](faq.md)**
2. **[Installation](installation.md)**
3. **[Quick start](quick_start.md)**
4. **[Project layout](project_layout.md)**
5. **[Sample content](sample_content.md)**
6. **[Editor overview](editor_overview.md)**

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
