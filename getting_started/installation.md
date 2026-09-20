# Installation

Detis Engine does not use a launcher or a multi-project workspace. **One engine copy is one game.**

Download and extract the engine package. That data is your project: binary, required engine data, and your content together.

## Editor and game

The editor is built into the game. You run one executable: `Detis Game` on Windows (`Detis Game.exe` in `bin`), `detis_engine` on Linux.

By default it starts in **editor** mode (`editor_active_on_startup` in `content/config/default_game.ini`). Enter **game** with the green **Play** button on the viewport toolbar, **Debug → Play Game**, or `Ctrl+P` / `Alt+P`. The same play shortcut returns you to the editor. 
Starting in game mode on launch is a packaging choice, not something you need on day one.

## Run it

1. Open `game/bin`.
2. Run `Detis Game.exe` on Windows (`detis_engine` on Linux) from the build that matches your machine.

Paths are resolved from that executable. Keep `bin`, `content`, and `engine` together as shipped.

## Another game, another copy

Want a second game? Copy a **fresh** engine package and work in that `game` folder.

Do not put several unrelated games inside one copy unless you intend to. 

## Platforms

Desktop PC: **Windows** and **Linux** (64-bit). Use the build that matches your OS.

## Next

**[Quick start](quick_start.md).** Load a demo, play, then edit something.
