# Script Overview

Gameplay in Detis is handled in **Lua**. There are three main script types. All share the same basic shape, but each is built for a different job.

## Three Script Types

| Type | Purpose |
|------|---------|
| **Entity Script** | Gameplay behavior on a single object. |
| **World Script** | Logic for the current world (puzzles, level flow, wiring entities together). |
| **Module Script** | Game-wide systems that persist across different worlds (player data, save helpers, shared services). |

## Basic Script Shape

Every script is a Lua table containing functions that returns itself at the end:

```lua
local MyScript = {}

function MyScript.on_ready()
end

return MyScript
```

The table name defined at the top must match the name passed to `return`.

## Lifecycle Callbacks

Implement only the callbacks your script needs:

- **`on_initialize`**: Runs once when the script is created. Use it to set up local state.
- **`on_ready`**: Runs after everything in the scene has finished initializing. Ideal for resolving entities or calling other scripts and modules. (World script `on_ready` runs last).
- **`on_process`**: Runs every frame with a variable delta time. Used for general gameplay updates.
- **`on_fixed_process`**: Runs on a fixed physics-aligned timestep. Ideal for movement and physics logic.
- **`on_late_process`**: Runs after `on_process` in the same frame. Useful for work that depends on earlier frame updates finishing first.
- **`on_draw`**: Renders custom UI with the built-in UI framework.
- **`on_shutdown`**: Runs right before the script is destroyed. Clean up temporary state here.
- **`on_editor_mode_active`**: Triggers when toggling between editor view and play mode.

## Entity Scripts

Entity scripts attach behavior to a specific object: interactive doors, lamps, physics props, or player HUD elements.

Attach a `.lua` file from the Entity Inspector under the **Script** component. Built-in variables like `entity_id` automatically refer to that owning entity.

### Parameters

Parameters are editable fields on an entity. You declare them in code so you (or a designer) can tune values in the Entity Inspector without touching the script again:

```lua
--@PARAMETER impulse_strength FLOAT 40.0 "Central impulse magnitude."
```

Each declared parameter becomes a value you can read inside the script (`impulse_strength`) and an editable control in the inspector. Use `--@PARAMETER_GROUP` to organize parameters into foldable sections.

Interactive entities often also implement callbacks like `get_can_interact`, `get_interaction_distance`, `get_interact_label`, and `on_interact`.

For a step-by-step example, see [Kick the ball](../tutorials/kick_the_ball.md).

## World Scripts

World scripts hold logic specific to a single map: puzzle mechanics, level progression, map UI, and scene events. Map-specific code belongs here, rather than in shared entity scripts.

Each loaded world can have one optional world script. Attach it under **View → World Settings → Script**.

## Module Scripts

Module scripts are persistent, game-wide systems that stay active across scene loads: camera controllers, save file helpers, and shared services.

Register modules in `content/config/modules.ini`:

```ini
[Module.CameraEffectsModule]
script = ../content/scripts/modules/camera_effects_module.lua
priority = 0
```

Access them from other scripts using `module_get_is_valid` and `module_call_function`. Changing which modules are listed in `modules.ini` requires an engine restart, as reloading scripts on the fly does not re-read configuration files from disk.

## Shared Helpers

Files in `content/scripts/shared/` are utility files that other scripts load using `dofile`. They are helper libraries, not entity, world, or module scripts, and do not use lifecycle callbacks.

## Where Files Live

| Path | Purpose |
|------|---------|
| `content/scripts/worlds/` | World scripts (demos often live in `worlds/demos/`) |
| `content/scripts/components/` | Reusable entity scripts |
| `content/scripts/modules/` | Game-wide module scripts |
| `content/scripts/player/` | Demo player controller scripts |
| `content/scripts/shared/` | Shared helper scripts |
| `content/scripts/_templates/` | Starter templates |
| `engine/stubs/engine_stubs.lua` | Engine API stubs (not gameplay code) |
| `content/stubs/game_stubs.lua` | Built-in script globals and `@PARAMETER` stubs |

All gameplay scripts live under `content/scripts/`. For a complete folder breakdown, see [Sample content](../getting_started/sample_content.md) and [Project layout](../getting_started/project_layout.md).

## Talking to the Engine

Gameplay APIs are exposed as global Lua functions (`entity_*`, `transform_*`, `physics_*`, `input_*`, `print_info`, etc.).

Stubs under `engine/stubs/engine_stubs.lua` and `content/stubs/game_stubs.lua` are for IDE autocomplete. They are generated from ScriptAPI bindings. Do not edit them.

For a browsable list of functions by group, see [Script API reference](../reference/README.md).

Getters and setters use a `get_` / `set_` prefix so related calls group in autocomplete. Example: type `entity_get_` and pick from the matches. Sample scripts do the same for their own getters and setters.

## Hot Reloading

When you edit a `.lua` file on disk while a world is running, you can reload it by:

- Clicking **Reload** on the Script component in the Inspector  
- Pressing **`Shift` + `R`** (or selecting **Debug → Reload Assets**)

> **Early Alpha Notice:** Scripts do not hot-reload automatically on file save yet. Automatic reload on save is planned. **Debug → Reload Assets** (`Shift+R`) reloads shaders, textures, materials, flipbooks, sounds, animations, scripts/modules, themes, property defaults, surface types, and editor input bindings.

## What to Read Next

- **[Kick the ball](../tutorials/kick_the_ball.md):** Hands-on tutorial covering entity scripts, parameters, and reloading.  
- **[Sample content](../getting_started/sample_content.md):** Folder map for shipped sample code.  
- **Upcoming tutorials:** In-depth guides on world scripts and module scripts.

---

## Optional: Code Conventions

Use any conventions or naming you like. The ones below are what the demo scripts use, if you want to match or browse them.

If you want a head start, copy a starter template from `content/scripts/_templates/`:

- `entity_script_template.lua`
- `world_script_template.lua`
- `module_script_template.lua`

Copy the file, rename the script table (and its `return` statement), save it in `content/scripts/`, and attach or register it.

Many sample scripts group their code under clean headers like this:

1. **DEPENDENCIES**: `dofile` imports for shared helpers  
2. **PARAMETERS**: Entity scripts only (`--@PARAMETER` declarations)  
3. **SETTINGS**: Constant-like locals (`UPPER_SNAKE_CASE`)  
4. **PROPERTIES**: File-local runtime state (`m_` prefix)  
5. **HELPERS**: Local functions used internally  
6. **INTERFACE**: Public functions intended for other scripts to call  
7. **CALLBACKS**: Engine event triggers (`on_interact`, `on_collision`)  
8. **LIFECYCLE**: Standard callbacks (`on_initialize`, `on_ready`, `on_process`, etc.)

**SETTINGS** holds fixed tunables. **PROPERTIES** holds mutable runtime state. Omit any sections or unused lifecycle functions you don't need.

### Suggested naming

Sample scripts often use:

- Script table: `PascalCase` (match the `return`)
- Files and functions: `snake_case`
- Args: `t_` prefix (`t_delta_time`, `t_entity_id`)
- Runtime state: `m_` prefix (`m_is_active`). On instances, `self.m_`
- Constants / SETTINGS: `UPPER_SNAKE_CASE`
- Getters / setters: `get_` / `set_` (helps autocomplete group related calls)
- Engine callbacks: `on_...` names the engine already calls (`on_interact`, `on_ready`, ...)
- Other actions: clear `snake_case` verbs (`begin_sustained`, `process_logic`, `draw_crosshair`, ...)


### Also useful

- Prefer `0`, `-1`, or `0.0` for numeric / ID state instead of `nil`.
- Check entity IDs with `entity_get_is_valid(id)` only. That already covers missing and zero IDs.
