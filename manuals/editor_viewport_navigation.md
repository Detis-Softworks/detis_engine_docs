# Viewport navigation

How to move the **spectator camera** in the 3D viewport while you edit. This is **not** Play mode. Play uses your game camera and player controls.

The editor keeps a hidden **spectator camera** for the viewport. You fly it with the mouse and keyboard. For toolbars and menus, see [Editor overview](editor_overview.md).

## Starting and stopping

1. Click inside the **3D viewport** so it has focus.
2. **Hold RMB** or **LMB** over the viewport to enter spectator control. The cursor is captured while you hold the button.
3. Release **both** buttons to stop. The cursor returns to where it was before you started.

Spectator control does not start if you are dragging a **gizmo**, clicking **ImGui** panels, or a **modal** (save dialog, file browser) is open.

**LMB** look is suppressed while **Ctrl** is held (box select) and while **Shift+LMB** owns the mouse for **Vertex Paint**, **Decorator**, or **Terrain Patch**. **RMB** look still works in those cases.

## Fly speed

**Spectator Speed** on the viewport toolbar (far right) sets how fast you move (0.1 to 100).

In **perspective**, while you **hold RMB**, the **mouse wheel** scales speed up or down.

Speed and look sensitivity are stored in the editor ini under **`[camera]`** (`speed`, `sensitivity`). Defaults ship in `engine/config/default_editor.ini`. Your layout and camera values persist in the user editor settings file when you quit.

## Perspective (default)

| Input | Action |
|-------|--------|
| Hold **RMB** | **Look** with the mouse. |
| **W** / **A** / **S** / **D** while holding **RMB** | Move forward, left, back, right relative to where you look. |
| **Q** / **E** while holding **RMB** | Move down / up in world space. |
| **RMB** + **LMB** together | **Pan** with the mouse (slide on camera right and world up) instead of look. |
| Hold **LMB** only (no RMB) | **Orbit-style move**: horizontal mouse turns yaw; vertical mouse slides along the horizontal forward direction. |
| **Mouse wheel** (RMB not held) | **Dolly** forward and backward along the view direction. |
| **Mouse wheel** (RMB held) | Change **Spectator Speed** for this session. |

Movement eases in and out when you press or release **WASD**. You do not need to hold **RMB** for wheel dolly when you are not aiming.

> **Note:** **W**, **E**, and **R** also switch translate / rotate / scale gizmos when you are **not** holding **RMB**. Hold **RMB** first, then use **WASD** to fly.

## Orthographic

Toggle with Keypad **5** or **View → Viewport Camera → Toggle Perspective/Orthographic**.

| Input | Action |
|-------|--------|
| Hold **RMB** | **Pan** the view. |
| Hold **LMB** | **Rotate** the view (pitch is clamped). |
| **Mouse wheel** | **Zoom** (orthographic size). |

Keypad **1**, **3**, and **7** snap to front, right, and top orthographic views. Hold **Ctrl** for back, left, and bottom. Same shortcuts are under **View → Viewport Camera**.

## Jump to something in the scene

| Input | Action |
|-------|--------|
| **F** | Focus the selected entity. |
| **Shift+F** | Frame all entities in the world. |
| **Alt+F** | Reveal the selection in the World Inspector. |
| **.** (period) | Focus the world origin. |

**View → Viewport Camera** lists the same actions.

## Customize bindings

Mouse **`aim`** is **RMB** and **`select`** is **LMB**. Movement keys and view snaps live in `engine/config/editor_input_bindings.ini`. **Help → Shortcuts** is the in-editor cheat sheet.

## Continue reading

**Previous:** [Editor overview](editor_overview.md): toolbars, Play, save, and prefabs.

**Next:** [Engine Settings](editor_engine_settings.md): **File → Settings** when you tune performance or appearance.
