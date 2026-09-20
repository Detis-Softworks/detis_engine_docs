# Detis Engine Manual

Detis is a lightweight engine for 3D single-player PC games on Windows and Linux. Drop in assets, edit worlds, script in Lua, hit Play. Editor and runtime are the same executable.

---

## Sections

### [Getting started](../getting_started/introduction.md)

Install the engine, learn the project layout, load demo content, and take the first guided tutorials.

### [Editor](../getting_started/editor_overview.md)

Menus, viewport toolbar, transform rail, Entity Browser, inspectors, and the day-one edit loop.

### [Tutorials](../tutorials/your_first_world.md)

Build a small level, author a prefab from components, and script interactable gameplay in Lua.

### [Worlds & Levels](worlds.md)

Level-based worlds, `.world` files, linking levels, and world soundscape/soundzone defaults.

### [Entities & Prefabs](entities.md)

Entity Browser, `.entity` prefabs, components, transform hierarchy, and spawning in Lua.

### [Troubleshooting](troubleshooting.md)

Startup, loading, and performance fixes. Log file, missing DLLs, settings reset, and update workflow.

### [Physics](physics.md)

Jolt bodies, character and dynamic motion, collision layers, constraints, and raycasts.

### [Input & Settings](input.md)

Action polling, mouse and gamepad, reading and writing settings, and ini files.

### [Lighting](lighting.md)

World sun, local Point and Spot lights, shadow settings, and EV100 exposure. Physical units and World Settings workflow.

### [Audio](audio.md)

Sound components, soundscapes, sound zones, music, and the Game / GUI / Ambient / Voice mix.

### [Art](art.md)

Zero-import meshes, DDS textures, `.mat` materials, Material Editor, Texture Packer, and sky DDS authoring.

### [Scripting](script_overview.md)

Entity, world, and module scripts. Lifecycle callbacks, `@PARAMETER` fields, and reloading from the editor.

### [Script API reference](../reference/README.md)

Generated Lua function list grouped by engine API. Pair with `engine/stubs/engine_stubs.lua` for IDE autocomplete.
