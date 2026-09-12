# Sample content

The package ships with **working demo worlds**, **prefabs**, **sample Lua**, and **example assets** so you can play something on day one.

All included game assets are **CC0**. There is a license file inside each asset folder. Modify, rewrite, or delete sample content as you build your game.

## How to use it

- Load a demo from **File → Load World**.
- Drag prefabs from **View → Entity Browser** (`Shift+Space`).
- Copy scripts and entity setups into your own work.
- Grow the game inside this `game/content/` tree. Nothing is a protected package.

Lighting and mix: [Lighting](../manuals/lighting.md), [Audio](../manuals/audio.md). Script kinds: [Script overview](../manuals/script_overview.md).

## Demo worlds

Under `content/worlds/demo_content/`:

| World | What it shows |
|-------|----------------|
| `visuals_exterior_demo.world` | Outdoor lighting, foliage, set dressing |
| `visuals_interior_demo.world` | Interior lighting and space |
| `materials_demo.world` | Material variety |
| `physics_demo.world` | Physics bodies |
| `interactions_demo.world` | Interactables and the demo player |
| `animation_demo.world` | Skeletal animation |
| `gui_demo.world` | In-game UI |
| `navigation_demo.world` | Nav and agents |
| `detection_demo.world` | Detection agents |
| `modules_demo.world` | Module scripts |

`content/worlds/default.world` is the startup world in `default_game.ini`.

## Prefabs

`.entity` files under `content/entities/`. The Entity Browser lists them.

| Path | Use |
|------|-----|
| `entities/primitive/` | Plane, cube, cylinder, pyramid |
| `entities/lights/` | Point and spot lights |
| `entities/demo_content/` | Characters, props, foliage, cave pieces, particles, systems |

## Sample Lua

Under `content/scripts/`:

| Path | Purpose |
|------|---------|
| `_templates/` | Starters to copy for world, entity, or module scripts |
| `worlds/demos/` | World scripts for the demo maps |
| `player/` | First-person player, camera, HUD, interaction |
| `components/` | Reusable entity scripts (doors, lamps, interactables, agents) |
| `modules/` | Game-wide modules listed in `content/config/modules.ini` |
| `shared/` | Helpers and UI widgets |
| `camera_effects/` | Post / camera effect scripts used by the camera-effects module |

## Next

**[Editor overview](editor_overview.md).** Menus, toolbars, and panels.
