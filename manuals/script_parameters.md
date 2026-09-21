# Parameters

**Parameters** are values a designer edits in the inspector without opening the script. You declare them in the **entity script** source. The engine exposes them on the Script component editor UI.

World and module scripts do not use **`--@PARAMETER`** so the focusis on entity scripts here.

---

## Why use them

| Without parameters | With parameters |
|--------------------|-----------------|
| Change a distance: edit Lua, reload | Change a distance: number field in inspector |
| Duplicate script for “strong” vs “weak” push | One script, different parameter on each entity |

Parameters are for **tuning and content**, not for saving the player’s progress mid-game. Runtime state lives in your **`m_`** variables.

---

## Declare a parameter

Write a **`--@PARAMETER`** line above your script table (or in a PARAMETERS section). Syntax:

```lua
--@PARAMETER impulse_strength FLOAT 40.0 "Central impulse magnitude."
```

After reload, the name **`impulse_strength`** is a global you can read in that script, same as **`entity_id`**.

**Groups** fold related fields in the inspector:

```lua
--@PARAMETER_GROUP Interaction
--@PARAMETER can_interact BOOL true "Can player interact with this entity."
--@PARAMETER interaction_distance FLOAT 2.5 "Distance at which player can interact."
```

Types and filters match what the editor supports ( **`FLOAT`**, **`BOOL`**, **`STRING`**, **`FILE`**, and so on). See shipped templates under **`content/scripts/_templates/entity_script_template.lua`** for more examples.

---

## Read parameters in code

Use the parameter name directly:

```lua
local MyPush = {}

function MyPush.on_ready()
    -- impulse_strength comes from --@PARAMETER above.
    print_info("Impulse: " .. tostring(impulse_strength))
end

return MyPush
```

Other scripts can read parameters on an entity with **`script_get_parameter`**.

---

## Continue reading

**Previous:** [Lifecycle and timesteps](script_lifecycle.md): **`on_ready`**, **`on_process`**, and the rest.

**Next:** [Communication](script_communication.md): call other scripts and modules.