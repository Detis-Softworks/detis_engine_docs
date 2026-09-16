# Troubleshooting

Fix common startup, loading, and performance problems. Most issues come from moved folders, bad ini edits, or GPU defaults that do not fit the machine.

## Engine Won't Start

Keep `bin`, `content`, and `engine` together as shipped. Paths resolve from the executable, so moving `detis_engine.exe` out of `bin` breaks content lookup. Run it from `game/bin` as described in [Installation](../getting_started/installation.md).

If Windows reports a missing DLL on launch, check `bin/` first:

- `SDL2.dll` - windowing and input. Missing means the package is incomplete or an antivirus quarantined the file.
- `lua54.dll` - scripting runtime. Missing means scripts will not load even if the editor opens.

Re-extract a fresh engine package and copy your `content/` over it instead of mixing DLL versions. Use the build that matches your OS (Windows or Linux, 64-bit). Detis needs a dedicated GPU. Integrated graphics may start but will render incorrectly or very slowly.

## Black Viewport or Wrong Look

A black viewport right after launch is usually a world or renderer setting, not a crash:

1. Check `bin/log.txt` tail for `Loading world from file`. If the path points at a deleted `.world`, the viewport has nothing to draw.
2. Check `content/config/default_game.ini`:

```ini
[Core]
default_world = ../content/worlds/default.world
editor_active_on_startup = true
```

Paths are relative to `content/config/`. Fix the path, restart the executable.

3. If the world loads but looks black, check exposure and sun in **View -> World Settings**. A zero sun lux or a broken sky texture gives a dark frame. See [Lighting](lighting.md) and [Worlds & Levels](worlds.md).

OpenGL 4.5 is required. The log prints the detected version at startup (`Loaded OpenGL 4.5.0 ...`). Update GPU drivers if the context fails to create.

## World or Asset Won't Load

Detis uses a zero-import pipeline. Files live on disk and load by path, so renames break references:

- Worlds: `content/worlds/*.world`. Moving a world breaks `default_world` and any `world_load_from_file` call that points at the old path.
- Prefabs: `content/entities/**/*.entity`. Moving a prefab breaks worlds that instance it.
- Materials and textures: `content/materials/**/*.mat` and `content/textures/**/*.dds`. Moving a texture breaks the `.mat` that points at it.

After editing files on disk outside the editor, use **Debug -> Reload Assets** (`Shift+R`) to pick up shaders, textures, materials, sounds, and scripts.

If a world opens but entities are missing, open `bin/log.txt` and search for `Failed` or `not found` lines near `Deserializing entities`. The log names the exact path it tried.

Script errors also land in the log. A red overlay or dead behavior after pressing Play usually means a Lua error in `on_ready` or `on_process`. Search the log for `.lua` and the line number, fix the file, then **Debug -> Reload Assets** (`Shift+R`) and press Play again. See [Script overview](script_overview.md) for lifecycle order.

## No Sound or Wrong Mix

When the picture is fine but audio is missing, work through the chain:

1. Check the OS mixer and the Engine Settings mixer first. A muted **Master** or **Ambient** bus silences whole categories. See [Audio](audio.md).
2. Confirm the listener is inside a zone. Outside every entity zone you hear the World Soundscape and Default Sound Zone fallbacks from **View -> World Settings**. Inside a zone, that zone wins by priority. See [Worlds & Levels](worlds.md).
3. Check file paths. Sounds reference `content/sounds/**/*.wav` or similar by path. A moved file logs `Failed` in `bin/log.txt` and plays silence.
4. Reload assets (`Shift+R`) after adding sound files on disk. New files do not appear until reload.

## Slow or Stuttering Play

Start with `render_scale` and shadows. Open **File -> Settings** or edit the user ini:

```ini
[Renderer]
render_scale = 1.0
shadow_map_quality = 3
ssao_quality = 2
ssr_quality = 2
local_lights_distance_culling_max_distance = 80.0
```

Lower in this order when the frame rate drops:

1. `render_scale` to `0.75`. Biggest single win on GPU-bound machines.
2. `shadow_map_quality` and `ssao_quality` down one step each.
3. `local_lights_distance_culling_max_distance` to `40.0` in scenes with many local lights.

Keep `vsync_mode` in `[Display]` on `Enabled` unless you measure tearing against a high-refresh monitor. Turning physics up (`collision_steps`) costs CPU for little visual gain in most scenes. See [Engine Settings](../getting_started/engine_settings.md) for the full list and [Physics](physics.md) for collision cost.

Memory budget is off by default (`total_budget_mb = 0` in `engine/config/memory_profiles/none.ini`, selected by `[Memory] profile = none`). Leave it on `none` unless you ship and need a hard ceiling.

## Reset Settings to Defaults

A bad ini edit can make the engine look broken when the content is fine. Reset in this order:

1. In the editor: **File -> Settings -> Reset to Defaults**, then restart. This rewrites `user_engine_settings.ini` from the shipped template.
2. If the editor will not open: delete or rename the user file and relaunch. The engine copies defaults on next start:

```text
C:\Users\<you>\Documents\My Games\Detis Game\engine\user_engine_settings.ini
```

3. In Lua, `settings_reset_to_defaults()` followed by `settings_save()` does the same from a script. Use `settings_apply_loaded()` after changing values at runtime. See [Input & Settings](input.md).

Editor panel layout lives separately in `user_editor.ini` in the same folder. Delete it if docks or shortcuts behave strangely. It regenerates on launch.

## After Updating the Engine

One engine copy is one game. Never drop a new `detis_engine.exe` into an old tree or mix DLLs across versions:

1. Extract the new package to a fresh folder.
2. Copy your `content/` (worlds, entities, materials, scripts, configs) into the new tree.
3. Diff your `content/config/*.ini` against the new defaults. New keys appear on version bumps and old files silently miss them.
4. Keep `reference/` pinned to the stubs that shipped with your binary until you adopt the new API. Until VOK, `reference` stays frozen at `v1.0.2` (`engine/stubs/engine_stubs.lua`).
5. Launch once, read `bin/log.txt` top to bottom, and confirm the OpenGL version, memory profile, and world entity count look sane before editing.

## Where Files Live

- `bin/log.txt` - startup log. Check OpenGL version, loaded world path, entity count, and `Failed` lines.
- `bin/SDL2.dll`, `bin/lua54.dll` - required runtime libraries next to the executable.
- `content/config/default_game.ini` - startup world (`default_world`) and `editor_active_on_startup`.
- `engine/config/default_engine_settings.ini` - shipped renderer, display, audio, physics defaults.
- `engine/config/memory_profiles/none.ini` - memory budget profile (`profile = none`).
- User folder - `Documents\My Games\Detis Game\engine\user_engine_settings.ini` and `user_editor.ini`. Delete to reset.
- `engine/stubs/engine_stubs.lua` - API stubs for autocomplete, including `settings_*`.

## Next

- [Installation](../getting_started/installation.md) - correct folder layout and first launch
- [Engine Settings](../getting_started/engine_settings.md) - every setting the editor UI edits
- [Input & Settings](input.md) - read and write settings from Lua
- [Worlds & Levels](worlds.md) - fix broken `default_world` and level links
