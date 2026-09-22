# Editor

The Detis **editor** is where you build and test your game. You load and save **worlds**, place **prefabs** from the Entity Browser, tweak **components** in the inspectors, adjust **world settings** (sun, audio, scripts), and press **Play**. Editor and game share one executable, so what you see in Play is what players run.

If Play mode or the viewport feels slow, open **File -> Settings**. The **Engine Settings** chapter later in this section covers graphics quality, **Render Scale**, shadows, and VSync.

## What you are looking at

<img src="../images/editor/ed_overview_a.png" alt="Editor overview" style="max-width:600px;height:auto;display:block">

1. **Viewport toolbar** (above the 3D view): open inspectors, Entity Browser, asset tools, **Play**, reload, debug toggles, and spectator speed.
2. **Transform rail** (left of the viewport): move, rotate, and scale gizmos, snap, and flat light.
3. **Viewport:** fly the camera, select entities, drag gizmos, drop prefabs.
4. **Docked panels:** World Inspector, Entity Inspector, World Settings, Entity Browser, and others. Open them from the toolbar.
5. **Menu bar:** new, load, save, Settings, and extras not on the toolbar.

Hover toolbar buttons for shortcuts. **Help -> Shortcuts** lists the full set. Bindings live in `engine/config/editor_input_bindings.ini`.

## Day-one loop

| You want to… | How |
|--------------|-----|
| New world | **File -> New World** (`Ctrl+N`) |
| Load a world | **File -> Load World** (`Ctrl+L`) |
| Save | **File -> Save World** (`Ctrl+S`) |
| Save as | **File -> Save World As...** (`Ctrl+Shift+S`) |
| Undo / redo | **Edit -> Undo** (`Ctrl+Z`) / **Edit -> Redo** (`Ctrl+Y` or `Ctrl+Shift+Z`) |
| Play / back to editor | Green **Play** on the viewport toolbar. `Ctrl+P` / `Alt+P` toggles both ways |
| Place a prefab | Entity Browser on the viewport toolbar (`Shift+Space`), drag an `.entity` into the viewport |
| Settings / theme | **File -> Settings** (see **Engine Settings** in this section) |
| See all shortcuts | **Help -> Shortcuts** |

## Prefabs and entities

The usual way to add content is the **Entity Browser** (`Shift+Space`). Search the tree under `content/entities/`, then drag an `.entity` into the viewport or onto the World Inspector to parent it. Double-click spawns a root at the origin. Instance names come from the file stem and are made unique (`plane`, `plane_2`).

Use **Add New Entity** when you are authoring a new prefab from components (see the **Your first prefab** tutorial). **Prefab -> Load** on an existing entity still works if you want to keep its name.

> **Note:** You cannot pick invisible entities in the viewport yet (lights, empty parents, and similar). Select them in the **World Inspector** first, or edit **Transform** in the Entity Inspector.

## Continue reading

**Previous:** [Detis Engine Manual](index.md): start of the manual.

**Next:** [Viewport navigation](editor_viewport_navigation.md): spectator camera, fly, focus, and orthographic view.
