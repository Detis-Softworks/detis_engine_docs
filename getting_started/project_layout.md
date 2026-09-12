# Project layout

One engine copy is one game. Paths below are easiest to think about relative to `/bin` (where you run `detis_engine`). The runtime always anchors there.

## The three roots

```
game/
  bin/        Executable and runtime files (run from here). Do not touvh unless you know why. 
  content/    Worlds, scripts, assets, game config. This are your game files. 
  engine/     Engine builtins: shaders, editor data, defaults. Do not touvh unless you know why. 
```

## What belongs in `content/`

You can organize subfolders however you like under `content/`. Extension filters in the editor still apply when browsing.

Typical project structure:

| Path | Purpose |
|------|---------|
| `content/worlds/` | `.world` files (levels / maps) |
| `content/entities/` | Prefabs (`.entity`). Drag these from the Entity Browser |
| `content/scripts/` | Sample Lua. You can put `.lua` files anywhere under `content/`. |
| `content/meshes/`, `textures/`, `materials/` | Art you author or drop in |
| `content/sounds/`, `music/` | Audio files |
| `content/config/` | Game bootstrap, modules, input, surface types |

### Config you will touch early

Files under `content/config/` and `engine/config/` are **defaults**. They ship with the package so a new download boots correctly.

| File | Role |
|------|------|
| `content/config/default_game.ini` | Title, default world, editor vs game on startup, `dev_mode`. Also seeds live game settings. |
| `content/config/modules.ini` | Which Lua modules load |
| `content/config/game_input_bindings.ini` | Gameplay input bindings |
| `content/config/surface_types.ini` | Contact type names for materials |
| `engine/config/default_engine_settings.ini` | Seed for display / renderer / audio prefs |
| `engine/config/default_editor.ini` | Seed for editor prefs |
| `engine/config/editor_input_bindings.ini` | Editor shortcuts |

On first run, Detis copies the engine, editor, and game-settings defaults into a user folder, then reads and writes those copies. See [User data](#user-data-outside-the-package).

Startup keys such as `default_world` and `editor_active_on_startup` stay on the **shipped** `default_game.ini`. Changing the user copy will not change which world boots or whether the editor opens.

Edit the shipped defaults when you want every fresh profile of **this** game copy to start with different values.

## What belongs in `engine/`

Shaders, fonts, editor bindings, default engine settings seed, and other builtins the executable expects.

Treat this as part of the engine package. Unless you know what you are doing leave this directory alone. Put game-specific work under `content/`.

## Scripts

Put gameplay `.lua` files anywhere under `content/`. For a typical setup use `content/scripts/`.

IDE stubs for code completion live under `engine/stubs/engine_stubs.lua` and `content/stubs/game_stubs.lua`. Do not edit those. They are automatically generated. 

## User specific data

On first run, Detis creates a folder under the platform user root and **copies the default configs into it**. After that, **File → Settings** and the editor write those user copies. The shipped files in `game/` stay as the template for the next fresh profile.

The game title from `default_game.ini`, `title`, names the folder.

| Platform | User root |
|----------|-----------|
| Windows | `Documents/My Games` |
| Linux | `~/.<GameTitle>` (hidden folder in the home directory) |

Delete a user INI and relaunch to regenerate it from the matching default. 

## Rules of thumb

1. Your executables are in `game/bin`.
2. Put your work in `game/content/`.
3. Keep `bin`, `content`, and `engine` together.

## Next

**[Sample content](sample_content.md).** Shipped Lua, demos, and example assets.
