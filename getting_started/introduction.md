# Detis Engine

Detis Engine is a focused, lightweight game engine built for rapid iteration. It is an opinionated toolset for single-player 3D PC games, designed and built by a game dev veteran. There are no heavy import pipelines, no endless menu mazes, and no C++ build plumbing to babysit.

Drop in your assets, author worlds in the built-in live editor, script in Lua, and hit play. All in a single executable.

## Built for production, shared with the world

Detis began as an internal tool to power a specific 3D game. Strong interest from other developers led to a public release. You get a full visual 3D editor alongside a deep Lua API.

> **Early Alpha Notice:** Detis is under active development. Expect occasional bugs, API refinements, and additional features as development advances.

Need quick scope answers first? See [FAQ](faq.md).

## Why choose Detis Engine?

- Built for one clear target. 3D single-player PC games with hand-authored, level-based worlds.
- Less overhead than general-purpose engines. You avoid broad multi-platform and multi-genre complexity that slows iteration.
- Fast iteration loop. Editor and game are the same executable. Switch modes in one viewport.
- Direct asset pipeline. Raw glTF, GLB, DDS, and KTX with no import step.
- Lean scripting model. Gameplay in Lua with a deep API. Reload scripts and assets from the editor when you change files on disk.
- Practical core stack. PBR rendering, physics, 3D audio, animation, and pathfinding without niche bloat.
- Plain-text project data. Worlds, materials, scripts, and shaders are readable and diffable.
- No launcher maze and no separate project manager to configure first.

## Detis Engine is perfect for:

- 3D, single-player, level-based PC games.
- Native 64-bit Windows and Linux desktop with a dedicated GPU.
- Solo developers and small indie teams who want a tight toolset and fast iteration.
- Developers who feel comfortable using a high level script language.
- Handcrafted worlds and set pieces. Larger worlds built by linking multiple levels, not one endless streamed world.

## Recommended order

Read these in sequence. Each page links to the next step at the bottom.

### Getting started

1. [FAQ](faq.md)
2. [Installation](installation.md)
3. [Quick start](quick_start.md)
4. [Project layout](project_layout.md)
5. [Sample content](sample_content.md)
6. [Editor overview](editor_overview.md)

### Tutorials

1. [Your first world](../tutorials/your_first_world.md)
2. [Your first prefab](../tutorials/your_first_prefab.md)
3. [Kick the ball](../tutorials/kick_the_ball.md)

### Manuals

1. [Lighting](../manuals/lighting.md). Sun, local lights, shadows, exposure.
2. [Audio](../manuals/audio.md). Sound components, soundscapes, zones, music.
3. [Script overview](../manuals/script_overview.md). Entity, world, and module scripts.

> **System requirement:** 64-bit PC with a dedicated discrete GPU.

## Next

**[Installation](installation.md).** Download and get up and running.
