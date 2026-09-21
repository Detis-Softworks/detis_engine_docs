# In-game UI

While you play, any 2D elements drawn on top of the 3D world is **in-game UI**: crosshair, prompts, pause menu, inventory, settings, etc.

You build it in **Lua**, same as gameplay logic. **`on_draw`** function is specifically designed for UI. Each frame you tell the engine what to draw.

## Demo script helpers

Everything under **`content/scripts/`** in the shipped package is **sample and demo code**. You do not have to use any of it in your game. 

**`UiWidgets`** (`content/scripts/shared/ui_widgets.lua`) is a **demo helper library** offering basic buttons, rows, grids, and a skin options. It's specifically added to save you time and show one possible layout. You are free to copy it or delete it and write your own wrappers if you prefer.

---

## Two kinds of screen UI

Almost everything you ship falls into one of these buckets. 

| Type | Examples | How you usually build it |
|------|----------|---------------------------|
| **HUD** | Crosshair, interact prompt, health bar | Draw fonts or pictures on the **real screen**. Sizes as a **fraction of the screen** so resizing the window still feels right. |
| **Menus** | Pause, settings, inventory, main menu | Canvas **reference resolution** (often 1920×1080), controls in **design space** |

---

## How UI drawing works

1. The engine calls your script’s **`on_draw`** once per frame while that script is active.
2. You call **`gui_*`** functions to draw things.
3. There are two broad tool types:
   - **Pictures:** rectangles, text, images. Great for HUD.
   - **Controls:** buttons, sliders, text fields. Great for menus. They need a **design canvas** open so the engine knows what you clicked.

---

## Sizes

Your game window has a **real size in pixels** (width × height). That changes if the player resizes the window or uses a different monitor.

UI uses two different **size systems** (see terms above).

### Reference resolution and design space (for menus)

You pick a **reference resolution** (for example **1920×1080**) with **`gui_set_reference_resolution`**. While a **design canvas** is open, sizes like “320 wide, 44 tall” are **design-space** units at that reference. The engine scales them to the real window using **`GuiScaleMode`**.

Wider monitor, smaller window, ultrawide: the menu keeps the same **layout**, like scaling a fixed mock-up.

Set reference resolution once when your UI boots (often in a world script **`on_ready`**):

```lua
gui_set_reference_resolution(1920.0, 1080.0)
gui_set_scale_mode(GuiScaleMode.LETTERBOX)
```

**`GuiScaleMode`** is what happens when the window shape does not match the reference resolution:

| Mode | Plain English |
|------|----------------|
| **`LETTERBOX`** | Scale until the reference fits. Empty bars on the sides or top/bottom if needed. |
| **`MATCH_WIDTH`** | Match the window width. **`gui_get_layout_size()`** height follows the window. |
| **`MATCH_HEIGHT`** | Match the window height. Layout width follows the window. |
| **`EXPAND`** | Scale up until the window is filled, no bars. Layout can grow past the reference size. |

Open a **design canvas** and draw in design-space units:

```lua
if gui_begin_design_canvas("GuiDemoCanvas", 0) then
    if gui_button("Button") then
    end
end
gui_end_design_canvas()
```

**`gui_begin_design_canvas(name, flags)`** always takes a **`flags`** integer (second argument). **`0`** means default window chrome. **`GuiWindowFlags`** only change look and behavior (no title bar, no resize, and so on). You can add those when you polish a menu.

**`gui_begin_design_canvas`** opens a window sized for the active scale mode and enters **design space**.

Skinned **`UiWidgets.button(state)`** needs a state table from **`UiWidgets.new_button`** (see **`gui_demo_widgets.lua`**). The snippet above uses **`gui_button`** so it runs as written.

### Normalized sizes (for HUD)

For a crosshair or interact prompt you usually do **not** open a design canvas. You want “this icon is about **3.5% of the screen height**” so it stays a similar **size on screen** when the window changes.

The engine calls these **normalized** values: a number from **0 to 1**. For a single size, **`0.035`** means “3.5% of the current **`layout`** height”.

```lua
local ui_size = gui_get_layout_size()                               -- width and height of the current UI layout in pixels.
local crosshair_size = gui_get_normalized_to_uniform_size(0.035)    -- 0.035 = 3.5% of layout height.
local crosshair_pos = gui_get_anchored_rect(vec2(0.0, 0.0),         -- parent rectangle origin.
                                            ui_size,                -- parent rectangle size.
                                            vec2(0.5, 0.5),         -- anchor min on parent.
                                            vec2(0.5, 0.5),         -- anchor max on parent.
                                            vec2(0.5, 0.5),         -- pivot on the image.
                                            crosshair_size)         -- size of the drawn image in layout pixels.

gui_draw_image("../crosshair.dds",             -- path to the texture, relative to game/bin.
                crosshair_pos,              -- top-left position returned by gui_get_anchored_rect.
                crosshair_size,             -- draw size (same vec2 from gui_get_normalized_to_uniform_size).
                vec4(1.0, 1.0, 1.0, 0.55))  -- tint color: RGBA, 0.55 alpha = slightly transparent.
```

**Anchors** are just “which point on the screen” and “which point on my picture” line up. `(0.5, 0.5)` is center. `(0, 0)` is top-left. `(1, 0)` is top-right.

### Example Cases

| Case | Size things with |
|------------------|------------------|
| Pause / settings / inventory | Design-space units inside **`gui_begin_design_canvas`** |
| Crosshair, prompts, toasts on the play view | Fractions like **`0.035`** + **anchors** |
| Corner FPS counter | Same as HUD |

---

## Colors and text

When a guide says **`vec4(0.08, 0.08, 0.10, 0.78)`**, that is **four numbers from 0 to 1**:

1. Red  
2. Green  
3. Blue  
4. **Alpha** (opacity). `1` = solid, `0` = invisible.

So that example is a dark gray box that is slightly see-through. You can think of it as an **RGBA color**”

Text uses **`gui_draw_text`** or **`gui_draw_text_aligned`**. Font size for HUD is often converted from a screen fraction with **`gui_get_normalized_to_pixels`**.

---

## What draws on top of what

When two things overlap, we need a way to define the draw priority.

Think of three layers:

1. **The 3D game** - 3D scene layer. 
2. **Windows** - Controls and menu panels draw here.  
3. **Foreground draw** - HUD **`gui_draw_*`** and tooltips can draw here, **in front of all windows**.

**Draw order on one layer:** whatever you draw **last** covers what you drew **before**.

**Draw priority** (**`gui_push_draw_priority`** / **`gui_pop_draw_priority`**): reorders draws on the **current** draw target when submission order is wrong. It does **not** move draws above the foreground layer.

**Foreground draw:** use **`gui_push_foreground_draw`** before **`gui_draw_*`** when a **design canvas** is still open and the picture must not be clipped by that window (typical **tooltip**). **`gui_pop_foreground_draw`** when done.

If no window is open, **`gui_draw_*`** already uses the foreground layer. You usually do not need **`gui_push_foreground_draw`** for a crosshair.

```lua

    if gui_begin_design_canvas("PauseMenu", 0) then
        gui_draw_rect(vec2(40.0, 40.0), vec2(400.0, 300.0), vec4(0.08, 0.08, 0.10, 0.92)) -- window layer: menu panel

        gui_push_foreground_draw()
        gui_draw_text("Tooltip line", vec2(120.0, 80.0), 18.0, vec4(1.0, 1.0, 1.0, 1.0)) -- foreground: above the panel while canvas is open
        gui_pop_foreground_draw()
    end
    gui_end_design_canvas()

    local ui_size = gui_get_layout_size()
    local crosshair_size = gui_get_normalized_to_uniform_size(0.035)
    local crosshair_pos = gui_get_anchored_rect(vec2(0.0, 0.0), ui_size, vec2(0.5, 0.5), vec2(0.5, 0.5), vec2(0.5, 0.5), crosshair_size)
    gui_draw_image("crosshair.dds", crosshair_pos, crosshair_size, vec4(1.0, 1.0, 1.0, 0.55)) -- foreground: after gui_end_design_canvas, still above the menu.
```

---

## UI input vs gameplay input

When a menu is open, the game should often **stop** moving the character while the player clicks buttons.

Use:

- **`gui_get_want_capture_mouse`** / **`gui_get_want_capture_keyboard`** - UI wants input this frame.  
- **`gui_get_is_interacting`** - something is hovered, held, or being typed in.

The GUI demo world disables player walk/look while the menu showcase is up. Copy that pattern for pause menus.

---

## Images and txt in the 3D world

A label floating above an NPC is still **2D text on the screen**, (note the engine supports experimental 3d text too).

Typical flow:

1. **`camera_get_world_to_screen_position(vec3(...))`** → screen x/y, or **`nil`** if off-screen.  
2. **`gui_get_text_size(t_text, LABEL_FONT_SIZE)`**, then **`gui_draw_text(t_text, vec2(text_x, text_y), LABEL_FONT_SIZE, LABEL_TEXT_COLOR)`** (optional **`font_id`**, **`scale`**).

Same HUD rules apply (often screen fractions for font size).

---
## Demo World

Check **`gui_demo.world`** and press **1-9** to select demo mode. 

---

## API reference

- [Gui functions (reference)](../reference/gui.md) - alphabetical **`gui_*`** list from ScriptAPI  
- [Script overview](script_overview.md) - **`on_draw`** and script types  
- IDE autocomplete: **`engine/stubs/engine_stubs.lua`**