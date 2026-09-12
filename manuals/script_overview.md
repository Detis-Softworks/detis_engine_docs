# Script overview

Gameplay is Lua. Pick the script type that matches the job.

| Type | Use when |
|------|----------|
| **Entity script** | Behavior on one object (door, lamp, prop, HUD). |
| **World script** | Logic for this map (puzzles, flow, wiring entities together). |
| **Module script** | A game-wide system that survives world loads (save helpers, shared services). |

## Script shape

A script is a Lua table that you return at the end. The table name and the `return` name must match.

```lua
local MyScript = {}

function MyScript.on_ready()
end

return MyScript
```

Copy a starter from `content/scripts/_templates/` (`entity_script_template.lua`, `world_script_template.lua`, `module_script_template.lua`), rename the table and `return`, then attach or register it.

Implement only the callbacks you need. Folder map: [Sample content](../getting_started/sample_content.md).

## Attach behavior to an entity

Add a **Script** component in the Entity Inspector and point it at a `.lua` file. `entity_id` is the owning entity.

Declare inspector fields with `--@PARAMETER`. You can read the same name in Lua.

```lua
--@PARAMETER impulse_strength FLOAT 40.0 "Central impulse magnitude."
```

`--@PARAMETER_GROUP` folds related fields in the inspector.

Interactables typically implement `get_can_interact`, `get_interaction_distance`, `get_interact_label`, and `on_interact`. Walkthrough: [Kick the ball](../tutorials/kick_the_ball.md).

## Run map logic

Map-specific code belongs in the world script, not in a shared entity script. One optional world script per loaded world: **View → World Settings → Script**.

## Add a game-wide system

Register modules in `content/config/modules.ini`:

```ini
[Module.CameraEffectsModule]
script = ../content/scripts/modules/camera_effects_module.lua
priority = 0
```

Call them with `module_get_is_valid` and `module_call_function`. Changing the module list needs an engine restart. **Reload Assets** does not re-read `modules.ini`.

## Shared helpers

Files under `content/scripts/shared/` are libraries. Other scripts `dofile` them. They are not entity, world, or module scripts, and they have no lifecycle callbacks.

## Lifecycle

| Callback | When |
|----------|------|
| `on_initialize` | Once at create. Set up local state. |
| `on_ready` | After the scene has initialized. Resolve entities and call other scripts. World script `on_ready` runs last. |
| `on_process` | Every frame, variable delta. |
| `on_fixed_process` | Fixed physics timestep. Movement and physics. |
| `on_late_process` | After `on_process` in the same frame. |
| `on_draw` | Custom UI and debug draw. |
| `on_shutdown` | Just before destroy. |
| `on_editor_mode_active` | Editor ↔ play toggle. |

## Talk to the engine

Gameplay APIs are globals: `entity_*`, `transform_*`, `physics_*`, `input_*`, `print_info`, and so on. Browse them in the [Script API reference](../reference/README.md).

`engine/stubs/engine_stubs.lua` and `content/stubs/game_stubs.lua` are generated for IDE autocomplete. Do not edit them.

Getters and setters use `get_` / `set_` so related calls group in autocomplete. Type `entity_get_` and pick from the list.

## Reload a script

After you edit a `.lua` file on disk:

- **Reload** on the Script component, or
- **Debug → Reload Assets** (`Shift+R`)

Reload does not run on file save. `Shift+R` also reloads shaders, textures, materials, sounds, animations, and related assets.

## Match the sample scripts

Optional. Use whatever style you like. Demo scripts and the templates group code like this:

1. **DEPENDENCIES** — `dofile` imports
2. **HANDLERS** — local aliases to dependency functions
3. **PARAMETERS** — entity `--@PARAMETER` lines
4. **PROPERTIES** — file-local runtime state (`m_`)
5. **HELPERS** — local functions used more than once
6. **INTERFACE** — functions other scripts call
7. **CALLBACKS** — `on_interact`, `on_collision`, …
8. **LIFECYCLE** — `on_initialize`, `on_ready`, `on_process`, …

Drop unused sections and unused callbacks.

Naming in the samples: table `PascalCase`, files and functions `snake_case`, args `t_`, runtime state `m_` (or `self.m_`), constants `UPPER_SNAKE_CASE`. Use `0`, `-1`, or `0.0` for numeric / ID state instead of `nil`. Check IDs with `entity_get_is_valid(id)` only.

## API reference

- [Script API index](../reference/README.md)
- [Script](../reference/script.md)
- [Entity](../reference/entity.md)
- [World](../reference/world.md)
- [Module](../reference/module.md)
- [Game](../reference/game.md)
