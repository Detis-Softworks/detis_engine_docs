# Worlds & Levels

Worlds are the levels in Detis. Each `.world` file is a self-contained level that holds its entities, world settings, and optional world script, and the engine runs one world at a time.

## Worlds Are Levels

Detis is level-based, not open-world. There is no streaming or world partition budget. You build a set of discrete `.world` files and switch between them with a full load.

Use one world per playable space: a room, a cave section, an exterior courtyard, a menu. Keep each world small enough to load quickly and to edit without hunting through a huge hierarchy. Reuse prefabs from `content/entities/` instead of duplicating geometry per level.

World switching replaces the current world. Entities from the previous world do not persist unless you recreate or carry state through a module script.

## Creating and Saving a World

Create and save worlds in the editor. The workflow matches the first world tutorial.

1. **File → New World** (`Ctrl+N`) to start from an empty world. The new world already has a sun and sky fill.
2. **File → Save World As** (`Ctrl+Shift+S`) and pick a path under `content/worlds/`, for example `content/worlds/level_01.world`.
3. **File → Save World** (`Ctrl+S`) for later saves.
4. Edit world-wide options in **View → World Settings**: sun and ambient lux, sky and IBL, Default Sound Zone, World Soundscape, and the optional world script.

Name worlds consistently, for example `level_01.world`, `level_02.world`, `hub.world`. Group related levels in subfolders such as `content/worlds/chapter_01/` if your project has many files.

The startup world is set in `content/config/default_game.ini`:

```ini
[Core]
default_world = ../content/worlds/default.world
```

Use the path you saved, relative to `content/config/`. Restart the executable to boot into that world.

## Linking Levels

Detis has no automatic level streaming. You link levels explicitly by loading another `.world` from a trigger, door, or UI action.

Common pattern: place an entity such as `loading_door_simple.entity` and attach a script that calls `world_load_from_file` on interaction or on collision. Demo worlds link to each other this way, for example `visuals_interior_demo.world` and `visuals_exterior_demo.world` each store the other world path as a parameter.

Keep a single load path at a time. Avoid chaining loads in one frame, show a loading prompt if needed, and gate input while `world_get_is_loading()` is true. Store shared progress in a module script so it survives the load.

## Loading and Querying Worlds in Lua

Loading is explicit. Query helpers cover the current world and its entities.

```lua
-- request a world switch from any entity or world script
local ok = world_load_from_file("content/worlds/level_02.world")

-- poll or display loading state
if world_get_is_loading() then
  return
end

local current = world_get_current_world_file_path()
local count = world_get_entity_count()

-- useful queries for world logic
local player = world_get_entity_by_name("player")
local doors = world_get_entities_by_tag("door")
local lights = world_get_entities_with_component("Light")
local path_id = world_get_entity_by_hierarchy_path("Hub/Room_01/Door_02")
local hierarchy = world_get_entity_hierarchy_path(player)
```

Related creation and lookup calls: `world_create_entity`, `world_clone_entity`, `world_destroy_entity`, `world_get_entities`, `world_get_entities_by_name`, `world_get_entity_by_id`, `world_get_current_camera`, `world_set_current_camera`, `world_get_has_script_parameter`, `world_get_script_parameter`, `world_set_script_parameter`. See the [World reference](../reference/world.md) for the full list.

## World Soundscape and Soundzone

Each world has two global audio defaults that apply when no entity zone covers the listener: the World Soundscape and the Default Sound Zone. Entity Soundscape Zones and Sound Zones override them by priority when the listener is inside.

World soundscape controls the ambient bed:

```lua
-- pause the ambient bed for a cutscene or menu
if not world_soundscape_get_is_paused() then
  world_soundscape_set_paused(true)
end

-- reapply an edited profile with a crossfade
world_soundscape_reload_active_profile(0.5)

-- inspect which zone currently provides the bed
local active_zone = world_soundscape_get_active_zone()
local profile = world_soundscape_get_profile()
```

Call `world_soundscape_notify_profile_changed()` after you modify the profile table in place, or use `world_soundscape_set_profile()` after building a new one.

World soundzone sets the fallback reverb and filtering used outside entity zones:

```lua
-- tune the fallback zone at runtime
world_soundzone_set_gain_multiplier(0.9)
world_soundzone_set_low_pass_cutoff_hz(8000)
world_soundzone_set_reverb_level(0.5)
world_soundzone_set_reverb_room_size(0.4)
world_soundzone_set_fade_duration(0.3)

-- restore the values saved in World Settings
world_soundzone_reset()
```

Individual getters mirror the setters: `world_soundzone_get_gain_multiplier`, `world_soundzone_get_low_pass_cutoff_hz`, `world_soundzone_get_reverb_level`, `world_soundzone_get_reverb_room_size`, `world_soundzone_get_reverb_damping`, `world_soundzone_get_reverb_width`, `world_soundzone_get_reverb_predelay_ms`, `world_soundzone_get_reverb_low_pass_cutoff_hz`, `world_soundzone_get_reverb_high_pass_cutoff_hz`, `world_soundzone_get_fade_duration`. For per-zone audio, see [Soundscape](audio_soundscape.md) and [Sound zone](audio_sound_zone.md).

## Best Practices for Level-Based Layout

- One world per load boundary. Split large spaces even if they connect visually, and link them with doors or explicit exits.
- Keep a shared naming scheme and folder per chapter or area. Document which world each exit loads.
- Reuse prefabs from `content/entities/` and `content/entities/demo_content/`. Fix source assets once instead of per world.
- Put level flow in the world script (puzzle state, exit unlocks, wiring between entities) and persistent state in module scripts.
- Set a sensible Default Sound Zone and World Soundscape in World Settings so every world sounds correct before you place entity zones.
- Test each world in isolation with **Debug → Play Game** (`Ctrl+P`) and test links in sequence. Check `world_get_current_world_file_path()` in the overlay when debugging links.

## Where Files Live

- `content/worlds/` - your levels as `.world` files (create `content/worlds/my_game/` for your project)
- `content/worlds/demo_content/` - shipped demo worlds such as `visuals_exterior_demo.world` and `interactions_demo.world`
- `content/worlds/default.world` - startup world referenced by `content/config/default_game.ini`
- `content/entities/` and `content/entities/demo_content/` - prefabs you place into worlds
- `content/scripts/worlds/` and `content/scripts/worlds/demos/` - world scripts attached in World Settings
- `engine/stubs/engine_stubs.lua` - API stubs for autocomplete including `world_*`, `world_soundscape_*`, `world_soundzone_*`

For project layout, see [Project layout](../getting_started/project_layout.md) and [Sample content](../getting_started/sample_content.md).

## Next

- [Entities & Prefabs](entities.md) - place and reuse objects inside a world
- [Script overview](script_overview.md) - world, entity, and module script types and lifecycle
- [World reference](../reference/world.md) - full `world_*` function list
- [World soundscape reference](../reference/world_soundscape.md) - `world_soundscape_*`
- [World soundzone reference](../reference/world_soundzone.md) - `world_soundzone_*`
