# Quick start

Goal: run your engine copy, play a demo, then edit the world and save.

If you have not extracted the package yet, see [Installation](installation.md) first.

## 1. Run your copy

Open `game/bin` and run `detis_engine`.

**This copy is already your game.** You do not create a project elsewhere.

The app starts in the **editor**. Editor and game are the same executable. The world from `content/config/default_game.ini` is already loaded (shipped default: `worlds/default.world`).

## 2. Know where your work lives

| Path | What you change |
|------|-----------------|
| `game/content/` | Worlds, scripts, meshes, prefabs, game config. **Your game.** |
| `game/engine/` | Engine builtins. Leave alone unless you know why. |
| `game/bin/` | Executable. Run from here. |

File dialogs open under `content/` by default. Prefabs also show up in **View → Entity Browser** (`Shift+Space`).

## 3. Play a demo

1. **File → Load World** (`Ctrl+L`).
2. Open `worlds/demo_content/visuals_exterior_demo.world`.
3. Press **`Ctrl+P`** or **`Alt+P`** (or the green **Play** button) to enter **game** mode.
4. Press `Ctrl+P` / `Alt+P` again to return to the **editor**.

**Debug → Play Game** is the same enter-game action as the Play button.

Other shipped demos live under `worlds/demo_content/`. See [Sample content](sample_content.md).

## 4. Edit, save, undo

Back in the editor:

1. Click something in the viewport (a rock or similar prop).
2. Move it with the translate gizmo (`W`, or the translate button on the left transform rail).
3. **File → Save World** (`Ctrl+S`).
4. To reverse the move, **Edit → Undo** (`Ctrl+Z`). Save again if you want that undo written to disk.

Redo is `Ctrl+Y` or `Ctrl+Shift+Z`.

Press `Ctrl+P` / `Alt+P` again to check the change in game mode.

## 5. Optional: open that demo on startup

The world loaded at launch is set in `game/content/config/default_game.ini`:

```ini
[Core]
default_world = ../content/worlds/default.world
```

Point it at the exterior visuals demo (or any world you prefer):

```ini
[Core]
default_world = ../content/worlds/demo_content/visuals_exterior_demo.world
```

Restart the executable after you save the file.

## Next

**[Project layout](project_layout.md).** Where your work lives on disk.
