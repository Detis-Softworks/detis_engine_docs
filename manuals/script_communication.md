# Communication

Scripts rarely live alone. You expose a small **interface** on your table, call **other entities’** functions, or talk to **modules** that stay loaded across **world** loads.

---

## Three kinds of data

| Kind | Who sets it | Example |
|------|-------------|---------|
| **Parameter** | Designer in inspector | Door open speed |
| **Runtime state** | Your script during play | “Is the latch open?” |
| **Cross-script calls** | Another script or module | “Unlock this door from the world script” |

---

## Your public functions

Name functions on your script table that **other code is allowed to call**. Shipped samples often use **`get_`** / **`set_`** prefixes so they group in autocomplete.

```lua
local MyLatch = {}

local m_is_locked = false

function MyLatch.set_locked(t_is_locked)
    m_is_locked = t_is_locked
end

function MyLatch.get_is_locked()
    return m_is_locked
end

return MyLatch
```

---

## Call a function on another entity

The function must exist on that entity’s **returned script table**. Resolve the **entity id** in **`on_ready`** (name, parameter, spawn logic). See [Entity](../reference/entity.md).

| API | Arguments | Return value from target |
|-----|-----------|---------------------------|
| **`world_call_entity_script_function`** | Yes. Extra values after the function name. | Yes. Use the Lua return from the call (numbers, strings, booleans, etc.). |
| **`script_call_function`** | No. Entity id and function name only. | No. **`true`** / **`false`** means the call ran, not the target’s return value. |


Extra arguments after the function name are passed to that function in order (same as a normal Lua call).

```lua
if entity_get_is_valid(t_door_entity_id) then
    world_call_entity_script_function(t_door_entity_id, "set_locked", false)
    local is_locked = world_call_entity_script_function(t_door_entity_id, "get_is_locked")
end
```

Supported argument types include numbers, strings, booleans, nil, tables, and engine **userdata** ( **`vec2`**, **`vec3`**, **`vec4`**, **`quat`**, **`mat3`**, **`mat4`**, and values built with the same constructors you use elsewhere in scripts). Return values from the target function can use the same types. Types not supported print errors at call time.

**`script_call_function`** is a small fire-and-forget helper when the target function takes **no** arguments and you only need to know if the call succeeded.

```lua
script_call_function(t_door_entity_id, "play_open_fx")
```

## Call the world script

**`world_call_script_function`** works like **`world_call_entity_script_function`**, but calls a function on the **current world script** (no entity id). Arguments and return values behave the same.

---

## Module scripts

Modules start with the game, stay loaded across **world loads**, and register in **`content/config/modules.ini`**:

```ini
[Module.game_module]
script = ../content/scripts/modules/game_module.lua
priority = 0
```

The section name is **`Module.`** plus a short name. Lua code uses that short name (example **`game_module`**), not the full section string.

```lua
if module_get_is_valid("game_module") then
    module_call_function("game_module", "set_pending_spawn_door", "ExitDoor")
end
```

**`module_call_function`** can pass extra arguments after the function name when the module function expects them. See [Module](../reference/module.md).

---

## Next

**[In-game UI](script_gui.md)**: HUD and menus in **`on_draw`**.