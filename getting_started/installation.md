# Installation

Detis Engine does not use a launcher or a multi-project workspace. **One engine copy is one game.**

## What you get

Download and extract the engine package. Inside you will find a `game` folder. That folder is your project: binary, engine data, and your content together.

Typical layout:

```
game/
  bin/        executable and runtime files
  content/    your worlds, scripts, assets, game config
  engine/     engine builtins (shaders, editor data, defaults)
```

There is nothing else to create. You are not asked to make a “new project.”

## Editor and game

The editor is built into the game. You run one executable.

By default it starts in **editor** mode (development). From there you can enter game mode while you work. Starting in game mode on launch is a config choice when you package a playable build, not something you need on day one.

## Run it

1. Open `game/bin`.
2. Run `detis_engine` (use the Windows or Linux build that matches your machine).

Paths are resolved from that executable. Keep `bin`, `content`, and `engine` together as shipped.

## Another game, another copy

Want a second game? Download (or copy) a **fresh** engine package and work in that `game` folder instead.

Do not put several unrelated games inside one copy. Each product gets its own folder tree.

## Platforms

Desktop PC: **Windows** and **Linux** (64-bit). Use the build that matches your OS.

## Next

- [Quick start](quick_start.md). Load a demo, play, then edit something.
- [Project layout](project_layout.md). What belongs under `content/` vs `engine/`.
