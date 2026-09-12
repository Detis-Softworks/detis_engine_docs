# Project layout

One engine copy is one game. Everything important lives under the `game` folder next to the executable.

Paths below are easiest to think about relative to `game/bin` (where you run `detis_engine`). The runtime always anchors there.

## The three roots

```
game/
  bin/        executable and runtime files (run from here)
  content/    your game: worlds, scripts, assets, game config
  engine/     engine builtins: shaders, editor data, defaults
```

| Folder | Role |
|--------|------|
| `bin/` | Launch the game. Do not put your art or scripts here. |
| `content/` | **Your** project. Edit this. |
| `engine/` | Engine defaults and builtins. Leave alone unless you know why you are changing it. |

Editor file dialogs open under `content/` by default. The **Entity Browser** lists `.entity` prefabs from the game tree.

## What belongs in `content/`

Typical folders you will use:

| Path | Purpose |
|------|---------|
| `content/worlds/` | `.world` files (levels / maps) |
| `content/entities/` | Prefabs (`.entity`). Drag these from the Entity Browser |
| `content/scripts/` | Lua scripts (worlds, entities, modules, shared code) |
| `content/meshes/`, `textures/`, `materials/` | Art you author or drop in |
| `content/sounds/`, `music/` | Audio files |
| `content/config/` | Game bootstrap, modules, input, surface types |

You can organize subfolders however you like under `content/` (for example `worlds/demo_content/`). Extension filters in the editor still apply when browsing.

The download also ships demo worlds, sample Lua, and example assets. See [Sample content](sample_content.md).

### Config you will touch early

Files under `content/config/` and `engine/config/` are **defaults** (seeds for a fresh copy). They ship with the package so a new download boots correctly.

| File | Role |
|------|------|
| `content/config/default_game.ini` | Title, default world, editor vs game on startup, `dev_mode` |
| `content/config/modules.ini` | Which Lua modules load |
| `content/config/game_input_bindings.ini` | Gameplay input bindings |
| `content/config/surface_types.ini` | Contact type names for materials |
| `engine/config/default_engine.ini` | Seed for display / renderer / audio prefs |
| `engine/config/editor_input_bindings.ini` | Editor shortcuts |

Startup keys such as `default_world` and `editor_active_on_startup` are read from the **shipped** `default_game.ini` at launch. Changing the live copies under the user root will not change which world boots or whether the editor opens.

Edit the shipped defaults when you want every fresh run of **this** game copy to behave differently.

## What belongs in `engine/`

Shaders, fonts, editor bindings, default engine settings seed, and other builtins the executable expects.

Treat this as part of the engine package. Prefer putting game-specific work under `content/`.

## Scripts layout (short map)

Under `content/scripts/` you will commonly see:

| Area | Use |
|------|-----|
| `worlds/` | World scripts (one world, map-specific logic) |
| `modules/` | Shared gameplay modules |
| `shared/` | Reusable helpers |
| `_templates/` | Optional script starters to copy from |
| `player/`, `components/`, `camera_effects/` | Entity, player, and effect scripts as the project grows |

Gameplay scripts live under `content/scripts/`, not under `engine/`. IDE stubs live under `engine/stubs/engine_stubs.lua` and `content/stubs/game_stubs.lua`. Do not edit those.

## User data (outside the package)

After the first run, **live** per-user data is written under a platform user root, not inside `game/content/`. There is no company folder in the path. The game title alone names the folder.

| Platform | User root |
|----------|-----------|
| Windows | `Documents/My Games` |
| Linux | `~/.<GameTitle>` (hidden folder in the home directory) |

```
<UserRoot>/<GameTitle>/          (Windows)
~/.<GameTitle>/                  (Linux)
  engine/     engine + editor prefs (copied from defaults on first run, then saved here)
  game/       gameplay / user game settings
  logs/       runtime logs
```

`<GameTitle>` comes from the `title` in `default_game.ini` (sanitized for the folder name).

Examples:

- Windows: `Documents/My Games/Detis Game/engine/user_engine.ini`
- Linux: `~/.Detis Game/engine/user_engine.ini` (enable “show hidden files” in the file manager)

| What | Where it actually lives |
|------|-------------------------|
| **File → Settings** (display, renderer, audio, theme, …) | `…/engine/user_engine.ini` |
| Editor settings | `…/engine/user_editor.ini` |
| ImGui layout | `…/engine/imgui.ini` |
| Gameplay / user game settings | `…/game/user_game_settings.ini` |
| Logs | `…/logs/` |

Package holds the defaults. The user root holds the live copies.

Reset engine prefs by deleting `user_engine.ini` and relaunching (it is recopied from `default_engine.ini`). **View → Reset Editor Layout** restores World Inspector, Entity Inspector, and Log.

## Rules of thumb

1. Run from `game/bin`.
2. Put your work in `game/content/`.
3. Do not scatter a second “project” elsewhere. This folder tree **is** the project.
4. Keep `bin`, `content`, and `engine` together when you copy or back up a game.

## Next

**[Sample content](sample_content.md).** Shipped Lua, demos, and example assets.
