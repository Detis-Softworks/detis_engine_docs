# Entity scripts

An **entity script** drives one entity: a door, a pickup, the player, a moving platform, and so on. Every placed copy of that prefab runs the same **`.lua`** file on its own instance.

## How to attach a script

1. Select the entity in the **World Inspector**.
2. In the **Entity Inspector**, **Add Component** -> **Script**.
3. On **Script File**, browse to your **`.lua`** under **`content/`**).

if you edit the script file on disk, use **Reload** on the **Script File** field, or **Debug -> Reload Assets** (**`Shift+R`**) to see the results.

## File shape

Each script returns a unique **Lua table**. You put functions on that table.

Worth noting that entity scripts receive **`entity_id`** for the entity they are attached to. 

```lua
local MyDoor = {}

local is_open = false

function MyDoor.on_ready()
end

function MyDoor.on_process(t_delta_time)
end

return MyDoor
```

## Inspector parameters

Add **`--@PARAMETER`** lines so designers can tune values without editing Lua. Each defined parameter is a global in that script.

```lua
--@PARAMETER impulse_strength FLOAT 40.0 "Push strength."
--@PARAMETER_GROUP Interaction
--@PARAMETER can_interact BOOL true "Allow interact."

local MyPush = {}

function MyPush.on_ready()
    print_info(tostring(impulse_strength))
end

return MyPush
```

Other scripts can read parameters on this entity with **`script_get_parameter`**. 

## Continue reading

**Previous:** [Lua editor setup](script_setup.md): VS Code and stubs.

**Next:** [World scripts](script_world.md): attach on the **`.world`**.
