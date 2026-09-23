# Project layout

A reminder that one engine download is one game. You run the program from **`bin/`** inside your **project root**. Everything the engine loads for your title lives under **`content/`** in that same root.

The root folder can be named anything. What matters is that **`bin`**, **`content`**, and **`engine`** stay siblings.

## Layout at the project root

```
<your root>/     (any folder name)
  bin/           Executable and runtime files (run from here). Do not touch unless you know why.
  content/       Worlds, scripts, assets, game config. These are your game files.
  engine/        Engine builtins: shaders, editor data, defaults. Do not touch unless you know why.
```

## What belongs in `content/`

You can organize subfolders however you like under `content/`. Extension filters in the editor still apply when browsing.

Typical project structure:

| Path | Purpose |
|------|---------|
| `content/worlds/` | **World** files ( **`.world`** ). One file is one playable space you load in the editor. |
| `content/entities/` | Prefabs (`.entity`). Drag these from the Entity Browser |
| `content/scripts/` | Sample Lua. You can put `.lua` files anywhere under `content/`. |
| `content/meshes/`, `textures/`, `materials/` | Art you author or drop in |
| `content/sounds/`, `music/` | Audio files |
| `content/config/` | Game bootstrap, modules, input, surface types |

## What belongs in `engine/`

Shaders, fonts, editor bindings, default engine settings seed, and other builtins the executable expects.

Treat this as part of the engine package. Unless you know what you are doing leave this directory alone. Put game-specific work under `content/`.

## User specific data

On first run, Detis creates a folder under the platform user root and **copies the default configs into it**. After that, **File -> Settings** and the editor write those user copies. The shipped **`bin`**, **`content`**, and **`engine`** trees in your project root stay as the template for the next fresh profile.

The game title from `default_game.ini`, `title`, names the folder.

| Platform | User root |
|----------|-----------|
| Windows | `Documents/My Games` |
| Linux | `~/.<GameTitle>` (hidden folder in the home directory) |

Delete a user INI and relaunch to regenerate it from the matching default. 

## Rules of thumb

1. Your executables are in **`bin/`** at the project root.
2. Put your work in **`content/`**.
3. Keep **`bin`**, **`content`**, and **`engine`** together in one root folder.

## Continue reading

**Previous:** [Quick start](quick_start.md): first Play and save.

**Next:** [Sample content](sample_content.md): shipped demos and example assets.
