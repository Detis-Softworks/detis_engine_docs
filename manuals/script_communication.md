# Communication

Scripts expose functions on their returned table. Other entity scripts, the world script, or a module can call those functions by name. You usually resolve **entity ids** once in **`on_ready`** and keep them in member variables.

## Public functions on your table

```lua
local MyLatch = {}

local is_locked = false

function MyLatch.set_locked(t_is_locked)
    is_locked = t_is_locked
end

function MyLatch.get_is_locked()
    return is_locked
end

return MyLatch
```

Shipped samples often use **`get_`** / **`set_`** prefixes. That is a convention, not a requirement.

## Call another entity's script

The **entity id** picks **which entity's script instance**. The **function name** picks **which function on that script's table** (one entity, many functions).

**`world_call_entity_script_function(entity_id, "function_name", ...)`** is what you want most of the time. Extra arguments after the name are passed into the target function. You get back whatever that function returns.

```lua
if entity_get_is_valid(t_door_entity_id) then
    world_call_entity_script_function(t_door_entity_id, "set_locked", false)
    local locked = world_call_entity_script_function(t_door_entity_id, "get_is_locked")
end
```

**`script_call_function(entity_id, "function_name")`** is the shortcut when the target takes **no** arguments. You only get **`true`** or **`false`** (call succeeded), not the target's return value.

Arguments and returns can be numbers, strings, booleans, **`nil`**, tables, and engine types (**`vec3`**, **`quat`**, and similar). Unsupported types log an error at call time.

For finding entities, see [Entity](/reference/entity.md).

## Call the world script

**`world_call_script_function("function_name", ...)`** calls the **current world's** script. No entity id. Same argument and return rules as **`world_call_entity_script_function`**. Setup: [World scripts](script_world.md).

## Call a module

**`module_call_function("module_name", "function_name", ...)`** when the module is registered (see [Module scripts](script_module.md)). API details: [Module](/reference/module.md).

## Continue reading

**Previous:** [Module scripts](script_module.md): Module Manager and registration.

**Next:** [In-game UI](script_gui.md): HUD and menus in **`on_draw`**.
