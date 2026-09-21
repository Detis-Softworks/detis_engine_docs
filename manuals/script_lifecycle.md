# Lifecycle and timesteps

The engine does not run your whole script every line each frame. It calls **named functions** on your script table when something happens. Implement only the ones you need. Remove empty callbacks you are not using.

---

## Order in a frame

1. **`on_initialize`**: once when the script instance is created. Set starting state here.
2. **`on_ready`**: once after entities in the **world** exist. Resolve entity IDs, call modules, connect to other scripts. The **world script** **`on_ready`** runs **after** entity scripts’ **`on_ready`**.
3. Each frame while playing:
   - **`on_process`**: variable **`t_delta_time`** (seconds since last frame). Gameplay that does not need fixed physics step.
   - **`on_fixed_process`**: fixed **`t_timestep`**. Movement and physics that should stay stable at different frame rates.
   - **`on_late_process`**: same frame, after **`on_process`**. Use when you need other scripts’ **`on_process`** to have finished first.
4. **`on_draw`**: draw in-game UI (HUD and menus).
5. **`on_shutdown`**: once before the script is destroyed. Clear state you created in **`on_initialize`**.

6. **`on_editor_mode_active`** runs when toggling editor view vs play mode. Useful for debug visuals.

---

## Callback cheat sheet

| Callback | When | Typical use |
|----------|------|-------------|
| **`on_initialize`** | Script created | Seed **`m_`** state, load **`dofile`** helpers |
| **`on_ready`** | World ready | Find entities, read parameters, call modules |
| **`on_process`** | Every frame (variable dt) | Timers, animation, input that is not physics |
| **`on_fixed_process`** | Fixed timestep | Character move, physics-aligned logic |
| **`on_late_process`** | After **`on_process`** | Camera follow, things that read updated positions |
| **`on_draw`** | Render phase | **`gui_*`** HUD and menus |
| **`on_shutdown`** | Script removed | Release references, print debug once |
| **`on_editor_mode_active`** | Editor vs play | Show or hide gizmos |

Physics event callbacks **`on_collision`** and **`on_overlap`** are separate. The engine invokes them when contacts or triggers fire. They are not the same as lifecycle hooks above.

---

## Variable vs fixed timestep

| Use | Callback |
|-----|----------|
| “Every frame, move this UI fade” | **`on_process`** |
| “Every physics step, apply force” | **`on_fixed_process`** |
| “After everyone moved, snap camera” | **`on_late_process`** |

If you only need one update loop, **`on_process`** is enough. Add **`on_fixed_process`** when you tie logic to physics or need a stable step size.

---

## Minimal examples

**Entity script (setup only):**

```lua
local MyProp = {}

function MyProp.on_initialize()
end

function MyProp.on_ready()
end

return MyProp
```

**Entity script (per-frame work):**

```lua
local MyTimer = {}

local m_elapsed_seconds = 0.0

function MyTimer.on_process(t_delta_time)
    m_elapsed_seconds = m_elapsed_seconds + t_delta_time
end

return MyTimer
```

Use **`entity_id`** only in entity scripts. World and module scripts use their own state and lookups (**`entity_get_*`**, saved IDs, and so on).

---

## Continue reading

**Previous:** [Where logic lives](script_placement.md): entity, world, module, or helper.

**Next:** [Parameters](script_parameters.md): designer fields in the inspector (**`--@PARAMETER`**).
