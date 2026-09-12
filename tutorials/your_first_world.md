# Your first world

Build a small playable room from scratch: ground, light, a prop, materials, IBL, and the demo player.

There is no finished tutorial world in the package. You save this one yourself.

You should already know how to run the engine and move in the editor. If not, do [Quick start](../getting_started/quick_start.md) and [Editor overview](../getting_started/editor_overview.md) first.

## 1. New world

1. **File → New World** (`Ctrl+N`).
2. Confirm when asked. You get an empty world.

## 2. Save it

1. **File → Save World As...** (`Ctrl+Shift+S`).
2. Browse under `content/worlds/` (file dialogs open in `content/` by default).
3. Save as `your_first_world.world` (a `tutorials` subfolder is optional).

Keeping the file under `content/worlds/` matches the rest of the package. See [Project layout](../getting_started/project_layout.md).

## 3. Required Tools

1. **View → World Inspector** (`Shift+1`) if it is not already open. You rename and parent entities here.
2. **View → Entity Inspector** (`Shift+2`) if it is not already open. You can add, edit, or remove components here. 
3. **View → Entity Browser** (`Shift+Space`), or the archive-box button on the viewport toolbar. A list of prefabs to spawn. In specific:
   - Drag an `.entity` prefab into the **viewport** to spawn it. 
   - Drop onto an entity in the World Inspector to spawn it as a child. 
   - Double-click spawns at the origin. Search is the fast path.

## 4. Add a ground plane

1. In the Entity Browser, search `plane` (or open `content/entities/primitive/`).
2. Drag `plane.entity` into the viewport.
3. In the World Inspector, right-click it → **Rename Entity** and name it `ground`.
4. Open **Transform** in the Entity Inspector and set:

   - Position: `0`, `0`, `0`
   - Rotation: `0`, `0`, `0`
   - Scale: `10`, `1`, `10`

   That makes the plane large enough for this tutorial.

You now have a ground mesh. A new world already has a sun (**Lux** 6) and sky fill (**Ambient Lux** 2). Add a local light so this small room has a clear source and a shadow.

## 5. Add a light

Add a point light.

1. In the Entity Browser, search `light_point`.
2. Drag `light_point.entity` into the viewport.
3. Right-click it in the World Inspector → **Rename Entity** and name it `light`.
4. Open **Transform** and place it above the ground, for example:

   - Position: `0.0`, `2.5`, `0.0`

   Use the translate gizmo (**W**) if you prefer to drag it into place. Lights are not pickable in the viewport yet, so select `light` in the World Inspector first.

> **Early Alpha Notice:** You cannot pick invisible entities in the viewport yet (lights, empty parents, and similar). Select them in the **World Inspector** first, then use the gizmo, or edit **Transform** in the Entity Inspector directly.

## 6. Add a cube

1. Search `cube` in the Entity Browser.
2. Drag `cube.entity` into the viewport.
3. Right-click it in the World Inspector → **Rename Entity** and name it `cube` if the stem is not already that.
4. Open **Transform** and set Position to `0`, `0.5`, `0` so the cube sits on the plane.

## 7. Apply materials

Materials live on the **Mesh** component. Each mesh slot has a **Material 0** (and more if the mesh has several slots).

1. Select `ground` in the World Inspector.
2. In the Entity Inspector, open the **Mesh** section.
3. On **Material 0**, browse and pick `materials/primitive/primitive_triplanar_dark_grey.mat`.
4. Select `cube`.
5. On **Material 0**, pick `materials/primitive/primitive_triplanar_yellow.mat`.

The ground and cube should now read clearly under the point light.

## 8. Enable point light shadows

1. Select `light`.
2. In the Entity Inspector, open the **Light** section.
3. Enable **Cast Shadows**.
4. Nudge the light horizontally in **Transform** (or with the translate gizmo after selecting it in the World Inspector) so it is not sitting directly above the cube. A bit of X or Z offset is enough.

The cube should cast a clear shadow across the ground. Prefab defaults (**Lumens** 800, **Range (m)** 30) are enough for this space. If there is no shadow, **File → Settings** → **Local Light Shadows** must be on.

## 9. Sky fill and IBL

Scene fill is **Ambient Lux**, not IBL. IBL adds reflections from the sky cubemap.

1. **View → World Settings** (`Shift+3`).
2. Open **Sky / Environment**.
3. Enable **Active** if it is off.
4. Leave **Ambient Lux** at `2` unless the room feels too flat or too bright.
5. Under **IBL**, enable **Active** if it is off.
6. Leave **Specular** and **Diffuse** on their defaults (`1.0`) unless you want to experiment.

## 10. Add the demo player prefab

1. In the Entity Browser, search `player_character`.
2. Drag `player_character.entity` into the viewport.
3. Right-click it in the World Inspector → **Rename Entity** and name it `player`.
4. Move it onto the ground in front of the cube, for example Position `-0.9`, `0`, `2.9`.

You should see an editor-only player marker in the viewport. That is expected.

## 11. Save and play

1. **File → Save World** (`Ctrl+S`).
2. **Debug → Play Game** (`Ctrl+P` / `Alt+P`), or **Play** on the viewport toolbar.
3. Walk around with the demo player controls, look at the lit cube, then toggle back to the editor with `Ctrl+P` / `Alt+P`.

## Optional: boot into this world next time

In `game/content/config/default_game.ini`:

```ini
[Core]
default_world = ../content/worlds/your_first_world.world
```

Use the path you actually saved (include `tutorials/` if you put it there). Restart the executable. The editor should open with this world loaded.

## Next

**[Your first prefab](your_first_prefab.md).** Build a sphere from components, save it, and load it again.

Sun, **Ambient Lux**, and local lights are covered in [Lighting](../manuals/lighting.md). Mix and music are in [Audio](../manuals/audio.md).
