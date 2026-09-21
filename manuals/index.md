# Detis Engine Manual

Detis is a lightweight engine for 3D single-player PC games on Windows and Linux. Drop in assets, edit worlds, script in Lua, hit Play. Editor and runtime are the same executable.

---

## Sections

### [Getting started](../getting_started/introduction.md)

Install the engine, learn the project layout, load demo content, and take the first guided tutorials.

### [Editor](editor.md)

Day-one layout: [Editor overview](../getting_started/editor_overview.md). Reference: [Engine Settings](editor_engine_settings.md) (**File → Settings**).

### [Tutorials](../tutorials/your_first_world.md)

Build a small level, author a prefab from components, and script interactable gameplay in Lua.

### [Lighting](lighting.md)

World sun, local Point and Spot lights, shadow settings, and EV100 exposure. Physical units and World Settings workflow.

### [Audio](audio.md)

Sound components, soundscapes, sound zones, music, and the Game / GUI / Ambient / Voice mix.

### [Art](art.md)

Zero-import meshes, DDS textures, `.mat` materials, Material Editor, Texture Packer, and sky DDS authoring.

### [Script overview](script_overview.md)

Lua gameplay: entity, world, and module scripts, stubs, and hot reload. Concept pages below (not tied to shipped demo code).

- [Where logic lives](script_placement.md)
- [Lifecycle and timesteps](script_lifecycle.md)
- [Parameters](script_parameters.md)
- [Communication](script_communication.md)
- [In-game UI](script_gui.md)

### [Script API reference](../reference/README.md)

Generated Lua function list grouped by engine API. Pair with `engine/stubs/engine_stubs.lua` for IDE autocomplete.
